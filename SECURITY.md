# Security Policy

## Reporting a vulnerability

Please report vulnerabilities **privately** via GitHub's private vulnerability
reporting: **on the repository you are reading this in**, open the **Security**
tab and choose **Report a vulnerability**.

Do **not** open a public issue for a security problem.

> **No absolute link on purpose.** These repositories are moving to the
> `medizininformatik-initiative` organisation. A hard-coded advisory URL sends
> reports to whichever copy the link names — which, while the move is in
> progress, may be an empty repository nobody is watching. A vulnerability
> report that goes somewhere unread is worse than an inconvenient one. Navigate
> from the repository you actually found the problem in.

> **Why private reporting:** a public issue discloses the problem before a fix
> exists. GitHub's private vulnerability reporting keeps the report between
> you and the maintainers until a fix is released, and is enabled for this
> repository.

If you cannot use GitHub, report through the organisation that owns the
repository. These repositories are prototypes and have no published security
contact of their own yet — one is set when they move to the
medizininformatik-initiative organisation (tracked in [issue #143](../../issues/143)).
Please do not open a public issue for a vulnerability in the meantime.

## Scope

This is a template repository for FHIR Implementation Guide tooling. It
processes **no patient data**. In scope are, in particular:

- the CI/CD workflows in `.github/workflows/` — e.g. injection via untrusted
  inputs, excessive token permissions, unpinned actions;
- the scripts in `scripts/`;
- the dev container definition in `.devcontainer/`;
- supply-chain issues in pinned dependencies (SUSHI, IG Publisher, actions).

Vulnerabilities in a **module created from this template** should be reported
to that module's own repository; report them here as well if the root cause is
in the template.

## What to expect

- Acknowledgement of your report within 14 days.
- Coordinated disclosure: we ask you to keep the report private until a fix or
  mitigation is available.
