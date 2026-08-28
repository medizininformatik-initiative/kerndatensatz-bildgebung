# Trigger prompts for `fhir-ig-analysis`

The Gate 3 prompt set — the empirical check required before this skill may be promoted from
`experimental` to `stable`, reused by each annual re-validation rather than reinvented.

**Status: not yet run.** Running these, recording which activated, and attaching the result to a
pull request is what unblocks promotion.

## How to run them

1. Install the catalog into a throwaway project so the agent sees only `name` and `description`.
2. Issue each prompt in a fresh session; a prompt asked after the skill has been discussed proves
   nothing.
3. Record whether the skill activated unprompted.
4. If a should-trigger prompt fails, **the description is the defect, not the user.**
5. If a should-not-trigger prompt activates this skill, the delimitation clause is too weak.

## Should trigger

1. "How big is our KDS module compared to kerndatensatz-basis?"
2. "Before we cut the release — is there anything obviously messy in this IG? Duplicate blocks,
   unused images, half-empty pages?"
3. "I need numbers on this Implementierungsleitfaden for a status report. Artefact counts, page
   counts, how mature it looks."
4. "Has the module actually grown since the last release, or does it just feel like it?"
5. "The report says six mandatory pages are missing but I can see them in the repo. What is it
   comparing against?"

Numbers 2, 4 and 5 matter most. Number 5 is the symptom of the exact defect this skill's rework
fixed, so it is the prompt most likely to arrive from a real user — and the description should reach
it.

## Should not trigger

1. "Translate the German pages of this module." — `fhir-ig-translation`. Included because both skills
   share IG vocabulary and this is the likeliest false positive.
2. "Move this Simplifier guide onto the module template." — `mii-ig-migration`. An earlier version of
   this skill framed itself as migration *scoping*, so this prompt tests that the narrowing held.
3. "Do our resource names follow the MII naming conventions?" — a convention check against the meta
   wiki, which is a different skill in a different repository.

## Recording a run

Append a dated block. Keep the prompts stable across runs; changing them makes two re-validations
incomparable, which defeats the point of storing them.

```markdown
### Run YYYY-MM-DD — <agent and version>

| # | Prompt | Expected | Observed |
| --- | --- | --- | --- |
| S1 | … | trigger | trigger |
| N1 | … | no trigger | no trigger |

Outcome: promoted / revised / unchanged. Notes: …
```
