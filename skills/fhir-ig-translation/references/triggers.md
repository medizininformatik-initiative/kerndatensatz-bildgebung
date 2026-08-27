# Trigger prompts for `fhir-ig-translation`

The Gate 3 prompt set — the empirical check required before this skill may be promoted from
`experimental` to `stable`, reused by each annual re-validation rather than reinvented.

**Status: not yet run.** Running these, recording which activated, and attaching the result to a
pull request is what unblocks promotion.

## How to run them

1. Install the catalog into a throwaway project so the agent sees only `name` and `description`.
2. Issue each prompt in a fresh session.
3. Record whether the skill activated unprompted.
4. If a should-trigger prompt fails, **the description is the defect, not the user.**
5. If a should-not-trigger prompt activates this skill, the delimitation clause is too weak.

## Should trigger

1. "The module builds green now. We want a German version of the guide as well — where do the German
   texts go?"
2. "Our `/de/` pages are showing English. What did we get wrong?"
3. "Ich habe die Übersetzung schon fertig, aber der Publisher ignoriert die .po-Datei."
4. "There is already a published German version of this module. Can we reuse those texts instead of
   translating everything again?"
5. "Do I put the translated page next to the English one as `index-de.md`?"

Numbers 2 and 5 matter most. Both are how the mistake actually presents, and number 5 asks for
precisely the thing the toolchain does **not** support — an earlier version of this skill got that
answer wrong, so a user arriving with it must reach the corrected version.

Number 3 is deliberately in German: the users of this skill work on German-language deliverables and
will ask in German. The description stays English for comparability, but if this prompt does not
trigger, the description is missing vocabulary a real user types.

## Should not trigger

1. "How does our module compare to kerndatensatz-basis in size and maturity?" — `fhir-ig-analysis`.
2. "Migrate this Simplifier guide onto the module template." — `mii-ig-migration`, which sets
   translation up as one step and then hands over here.
3. "Keep the IG template's header and footer overrides language-neutral." — the IG template
   package's own skill, in a different repository. This is the delimitation most likely to be
   crossed, because the two skills share a name upstream.

## Recording a run

Append a dated block. Keep the prompts stable across runs.

```markdown
### Run YYYY-MM-DD — <agent and version>

| # | Prompt | Expected | Observed |
| --- | --- | --- | --- |
| S1 | … | trigger | trigger |
| N1 | … | no trigger | no trigger |

Outcome: promoted / revised / unchanged. Notes: …
```
