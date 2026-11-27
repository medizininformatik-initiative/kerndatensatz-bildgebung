/* validate.js - the live box on the template's instance-validation page
 * (content/validate.html). Progressive enhancement: the page is complete
 * without this script (the four documented routes need no JavaScript); the
 * script only wires the "Validate" form to the HL7 validator-wrapper API.
 *
 * VALIDATOR API - verified against the live service on 2026-09-08:
 *   Swagger UI  https://validator.fhir.org/swagger-ui/index.html loads its
 *   spec from   https://validator.fhir.org/openapi.yml (title "Validator
 *   Wrapper API" 1.0.0; the /v3/api-docs and /api-docs paths are 404).
 *   Wrapper 1.0.84 / validator core 6.10.3 answered GET /validator/version.
 *   POST /validate  (Content-Type: application/json)
 *     request  { cliContext: { sv: "4.0.1", igs: ["<id>#<version>"],
 *                              profiles: ["<canonical>"], txServer: "<url>",
 *                              locale: "en"|"de"|"es", ... },
 *                filesToValidate: [{ fileName, fileContent, fileType: "json"|"xml" }],
 *                sessionId?: "<uuid>" }
 *       The spec marks sessionId as required, but a request WITHOUT it is
 *       accepted and the response mints one (a session keeps the loaded IGs
 *       in memory for an hour, so re-sending it makes later runs faster).
 *       The sv enum in the spec omits 4.0.1, yet "4.0.1" validates against
 *       R4 (the response's validationContext carries "|4.0.1").
 *     response { outcomes: [{ fileInfo: { fileName, fileContent, fileType },
 *                             issues: [ ... ] }],
 *                sessionId, validationTimes }
 *       The spec leaves the issue shape open; the live service returns
 *       { source, line, col, location, message, messageId?, type,
 *         level: "FATAL"|"ERROR"|"WARNING"|"INFORMATION", html, ... } -
 *       the severity key is "level", NOT "severity" (the OperationOutcome
 *       field name). flattenIssues() accepts either.
 *     errors 400/500 come back as text/plain. Two of them carry no
 *     validation issue at all and need their own message (probed live
 *     2026-09-09):
 *       - a package no registry serves -> HTTP 500, body "Unable to resolve
 *         package id <id>#<version>" (an unpublished preview build is the
 *         usual cause);
 *       - a profile canonical the loaded packages do not define -> HTTP 500
 *         with an EMPTY body (the wrapper's route catches Exception, and the
 *         resolver throws java.lang.Error, so nothing is reported).
 *     failureHint() maps both; everything else keeps the generic message.
 *   CORS (verified with an Origin header): Access-Control-Allow-Origin
 *   reflects the caller's origin, Access-Control-Allow-Headers includes
 *   Content-Type, and a preflight OPTIONS answers 200 - so a browser page on
 *   any host may POST to it. Allow-Methods lists only DELETE/OPTIONS/PATCH/
 *   PUT, which is fine: POST is a CORS-safelisted method and needs no entry.
 *
 * RENDERING uses the Bootstrap 3 the base template already ships (see
 * BOOTSTRAP_ROW_CLASS): the issues table is table/table-condensed/table-hover
 * with a contextual tint per row, and the summary line turns .text-danger
 * when the instance has errors. No stylesheet of our own is involved.
 *
 * CONFIGURATION comes from data-* attributes the page renders with Liquid
 * (see content/validate.html): the validator base URL (a module overrides it
 * in input/data/features.json -> validator.url; empty falls back to the
 * public service), the package id#version and FHIR version of THIS guide,
 * and an optional terminology server (features.json -> validator.tx).
 *
 * The helpers are pure and exported (CommonJS) for scripts/validate.test.mjs;
 * the browser bootstrap at the end only runs when a document exists.
 *
 * REMOVAL (one commit): this file, content/validate.html and the footer link
 * in includes/fragment-footer.html (docs/concepts.md section 7).
 */
(function (root, factory) {
  "use strict";
  if (typeof module === "object" && module.exports) {
    module.exports = factory();
  } else {
    root.IgInstanceValidation = factory();
  }
})(typeof self !== "undefined" ? self : this, function () {
  "use strict";

  var DEFAULT_VALIDATOR_URL = "https://validator.fhir.org";
  var REQUEST_TIMEOUT_MS = 180000;

  /* The validator base URL: the configured value, trimmed of whitespace and
   * trailing slashes; anything empty or non-string falls back to the public
   * HL7 service. */
  function resolveValidatorUrl(configured, fallback) {
    var base = fallback || DEFAULT_VALIDATOR_URL;
    if (typeof configured !== "string") return base;
    var trimmed = configured.trim().replace(/\/+$/, "");
    return trimmed === "" ? base : trimmed;
  }

  function validateEndpoint(baseUrl) {
    return resolveValidatorUrl(baseUrl) + "/validate";
  }

  /* "xml" when the first non-blank character is "<", else "json". */
  function detectFileType(text) {
    var s = typeof text === "string" ? text.replace(/^\uFEFF/, "").trim() : "";
    return s.charAt(0) === "<" ? "xml" : "json";
  }

  /* The POST /validate body. opts:
   *   content      the pasted instance (required)
   *   packageId    this guide's package id (required)
   *   version      this guide's package version (required)
   *   fhirVersion  base FHIR version, default "4.0.1"
   *   profile      optional profile canonical -> cliContext.profiles
   *   txServer     optional terminology server -> cliContext.txServer
   *   locale       message language, default "en"
   *   sessionId    optional session from a previous response
   *   fileName     optional; defaults by file type */
  function buildRequestBody(opts) {
    var o = opts || {};
    var content = typeof o.content === "string" ? o.content : "";
    var fileType = detectFileType(content);
    var cliContext = {
      sv: o.fhirVersion || "4.0.1",
      igs: [o.packageId + "#" + o.version],
      profiles: [],
      locale: o.locale || "en"
    };
    var profile = typeof o.profile === "string" ? o.profile.trim() : "";
    if (profile !== "") cliContext.profiles = [profile];
    var tx = typeof o.txServer === "string" ? o.txServer.trim() : "";
    if (tx !== "") cliContext.txServer = tx;
    var body = {
      cliContext: cliContext,
      filesToValidate: [{
        fileName: o.fileName || ("instance." + fileType),
        fileContent: content,
        fileType: fileType
      }]
    };
    if (typeof o.sessionId === "string" && o.sessionId !== "") body.sessionId = o.sessionId;
    return body;
  }

  /* One flat list from every outcome; severity normalized to lower case
   * ("error", "warning", "information", "fatal") from either the wrapper's
   * "level" or an OperationOutcome-style "severity". */
  function flattenIssues(response) {
    var out = [];
    var outcomes = response && Array.isArray(response.outcomes) ? response.outcomes : [];
    for (var i = 0; i < outcomes.length; i++) {
      var issues = Array.isArray(outcomes[i].issues) ? outcomes[i].issues : [];
      for (var j = 0; j < issues.length; j++) {
        var it = issues[j] || {};
        var sev = it.level || it.severity || "information";
        out.push({
          severity: String(sev).toLowerCase(),
          line: it.line == null ? "" : it.line,
          col: it.col == null ? "" : it.col,
          location: it.location || "",
          message: it.message || "",
          type: it.type || ""
        });
      }
    }
    return out;
  }

  function summarizeIssues(issues) {
    var s = { fatal: 0, error: 0, warning: 0, information: 0 };
    for (var i = 0; i < issues.length; i++) {
      var k = issues[i].severity;
      if (k in s) s[k] += 1; else s.information += 1;
    }
    return s;
  }

  function escapeHtml(v) {
    return String(v)
      .replace(/&/g, "&amp;")
      .replace(/</g, "&lt;")
      .replace(/>/g, "&gt;")
      .replace(/"/g, "&quot;")
      .replace(/'/g, "&#39;");
  }

  /* An HTML table of the issues; labels = { severity, line, location,
   * message, none }. Everything from the response is escaped. */
  /* Bootstrap 3 is what the publisher's base template ships (bootstrap-fhir.css
   * declares "Bootstrap v3.0.0"), and it defines exactly four contextual row
   * classes: danger, warning, success and active. There is NO .info in this
   * version, so "information" maps to active - mapping it to info would look
   * right and do nothing. Body text on all four tints measures above 9:1
   * contrast. The tint is never the only carrier of severity: the first
   * column keeps the word, which is what survives the print stylesheet
   * (bootstrap-fhir.css forces every colour to black for print) and what a
   * screen reader reads. */
  var BOOTSTRAP_ROW_CLASS = { fatal: "danger", error: "danger", warning: "warning", information: "active" };

  function renderIssuesTable(issues, labels) {
    var l = labels || {};
    var head = "<thead><tr><th>" + escapeHtml(l.severity || "Severity") +
      "</th><th>" + escapeHtml(l.line || "Line:Col") +
      "</th><th>" + escapeHtml(l.location || "Location") +
      "</th><th>" + escapeHtml(l.message || "Message") + "</th></tr></thead>";
    var rows = "";
    if (!issues || issues.length === 0) {
      rows = "<tr><td colspan=\"4\">" + escapeHtml(l.none || "No issues reported.") + "</td></tr>";
    } else {
      for (var i = 0; i < issues.length; i++) {
        var it = issues[i];
        var pos = it.line === "" ? "" : (it.line + (it.col === "" ? "" : ":" + it.col));
        var tint = BOOTSTRAP_ROW_CLASS[it.severity] || "";
        rows += "<tr class=\"ig-validate-" + escapeHtml(it.severity) + (tint ? " " + tint : "") + "\">" +
          "<td>" + escapeHtml(it.severity) + "</td>" +
          "<td>" + escapeHtml(pos) + "</td>" +
          "<td><code>" + escapeHtml(it.location) + "</code></td>" +
          "<td>" + escapeHtml(it.message) +
          (it.type ? " <small>(" + escapeHtml(it.type) + ")</small>" : "") + "</td></tr>";
      }
    }
    return "<table class=\"table table-condensed table-hover ig-validate-issues\">" + head +
      "<tbody>" + rows + "</tbody></table>";
  }

  var api = {
    DEFAULT_VALIDATOR_URL: DEFAULT_VALIDATOR_URL,
    resolveValidatorUrl: resolveValidatorUrl,
    validateEndpoint: validateEndpoint,
    detectFileType: detectFileType,
    buildRequestBody: buildRequestBody,
    flattenIssues: flattenIssues,
    summarizeIssues: summarizeIssues,
    escapeHtml: escapeHtml,
    renderIssuesTable: renderIssuesTable,
    runValidation: runValidation,
    failureHint: failureHint
  };

  /* The network flow, separated from the DOM so every failure path is
   * testable with a fake fetch: resolves {issues, summary, sessionId}; rejects
   * with an Error whose .kind is "timeout" | "http" | "parse" | "network". */
  function kindError(kind, message, extra) {
    var e = new Error(message); e.kind = kind;
    if (extra) { e.status = extra.status; e.body = extra.body; }
    return e;
  }

  /* Which of the two issue-less failures the wrapper reported, if either:
   * "package" (no registry serves it), "profile" (canonical not resolvable),
   * "" (anything else - the generic message applies). */
  function failureHint(err) {
    if (!err || err.kind !== "http") return "";
    var body = typeof err.body === "string" ? err.body : "";
    if (/unable to resolve package/i.test(body)) return "package";
    if (err.status === 500 && body.trim() === "") return "profile";
    return "";
  }

  function runValidation(opts) {
    var fetchImpl = opts.fetchImpl || (typeof fetch === "function" ? fetch : null);
    if (!fetchImpl) return Promise.reject(kindError("network", "fetch is not available in this browser"));
    var controller = typeof AbortController === "function" ? new AbortController() : null;
    var timer = controller ? setTimeout(function () { controller.abort(); }, opts.timeoutMs || REQUEST_TIMEOUT_MS) : null;
    function done(v) { if (timer) clearTimeout(timer); return v; }
    function fail(e) { if (timer) clearTimeout(timer); throw e; }
    return fetchImpl(opts.url, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(opts.body),
      signal: controller ? controller.signal : undefined
    }).then(function (res) {
      if (!res.ok) {
        return res.text().then(function (txt) {
          throw kindError("http", "HTTP " + res.status + (txt ? ": " + txt : ""),
            { status: res.status, body: txt || "" });
        });
      }
      return res.json().then(null, function () {
        throw kindError("parse", "the validator answered with something that is not JSON");
      });
    }).then(function (json) {
      var issues = flattenIssues(json);
      return { issues: issues, summary: summarizeIssues(issues),
               sessionId: typeof json.sessionId === "string" ? json.sessionId : "" };
    }, function (err) {
      if (err && err.kind) throw err;
      if (err && err.name === "AbortError") throw kindError("timeout", "the validator did not answer in time");
      throw kindError("network", err && err.message ? err.message : String(err));
    }).then(done, fail);
  }

  /* Browser bootstrap - one handler per form.ig-validate on the page. */
  function wireForm(form) {
    var d = form.dataset;
    /* The no-JavaScript notice is a plain <p> (the publisher's HTML inspector
     * rejects <noscript>), so this script takes it away - before the status
     * element is looked up, since both carry .ig-validate-status. */
    var nojs = form.querySelectorAll(".ig-validate-nojs");
    for (var n = 0; n < nojs.length; n++) {
      if (nojs[n].parentNode) nojs[n].parentNode.removeChild(nojs[n]);
    }
    var textarea = form.querySelector("textarea");
    var profileInput = form.querySelector("input[name=profile]");
    /* The picker is rendered only when this guide has resource profiles.
     * Choosing one copies its canonical into the text box, which stays the
     * single source the request is built from: a canonical pasted by hand -
     * a dependency's profile, say - keeps working, and buildRequestBody does
     * not change. */
    var profilePick = form.querySelector("select[name=profile-pick]");
    if (profilePick && profileInput) {
      profilePick.addEventListener("change", function () { profileInput.value = profilePick.value; });
    }
    var button = form.querySelector("button[type=submit]");
    var status = form.querySelector(".ig-validate-status");
    var result = form.querySelector(".ig-validate-result");
    var labels = {
      severity: d.labelSeverity, line: d.labelLine, location: d.labelLocation,
      message: d.labelMessage, none: d.labelNone
    };
    var sessionId = "";

    /* .text-danger (#b94a48) is the only contextual text colour in the shipped
     * Bootstrap that clears the template's 4.5:1 bar, so it is the only one
     * used: errors colour the summary, everything else stays body colour. */
    function say(text, danger) {
      if (!status) return;
      status.textContent = text;
      status.className = "ig-validate-status" + (danger ? " text-danger" : "");
    }

    form.addEventListener("submit", function (ev) {
      ev.preventDefault();
      var content = textarea ? textarea.value : "";
      if (content.trim() === "") { say(d.msgEmpty || "Paste an instance first.", true); return; }
      var body = buildRequestBody({
        content: content,
        packageId: d.packageId,
        version: d.packageVersion,
        fhirVersion: d.fhirVersion,
        profile: profileInput ? profileInput.value : "",
        txServer: d.tx || "",
        locale: d.locale || "en",
        sessionId: sessionId
      });
      var url = validateEndpoint(d.validatorUrl);
      if (button) button.disabled = true;
      if (result) result.innerHTML = "";
      say(d.msgBusy || "Validating - the first run loads the package and can take a minute.");
      runValidation({ url: url, body: body }).then(function (v) {
        if (v.sessionId) sessionId = v.sessionId;
        var s = v.summary;
        say((d.msgDone || "Result:") + " " + (s.fatal + s.error) + " " + (d.labelErrors || "errors") +
          ", " + s.warning + " " + (d.labelWarnings || "warnings") +
          ", " + s.information + " " + (d.labelInformation || "information"),
          (s.fatal + s.error) > 0);
        if (result) result.innerHTML = renderIssuesTable(v.issues, labels);
      }).catch(function (err) {
        if (err && err.kind === "timeout") { say(d.msgTimeout || "The validator did not answer in time.", true); return; }
        var hint = failureHint(err);
        if (hint === "package" && d.msgNopackage) { say(d.msgNopackage, true); return; }
        if (hint === "profile" && d.msgNoprofile) { say(d.msgNoprofile, true); return; }
        say((d.msgFailed || "Validation failed:") + " " + (err && err.message ? err.message : String(err)), true);
      }).then(function () {
        if (button) button.disabled = false;
      });
    });
  }

  if (typeof document !== "undefined" && typeof document.querySelectorAll === "function") {
    var forms = document.querySelectorAll("form.ig-validate");
    for (var i = 0; i < forms.length; i++) wireForm(forms[i]);
    /* The base's page header has no title for a page outside the IG's page
     * list (site.data.pages), so the tab would read " - <IG> v<ver>". */
    var h = document.querySelector("[data-page-title]");
    if (h && /^\s*-/.test(document.title)) document.title = h.getAttribute("data-page-title") + document.title;
  }

  return api;
});
