# Ops COO 009 - Operational Experience Inserts v0

Draft status: candidate copy, pending Chris confirmation. Do not submit as final until the narrative facts are verified.

Purpose: reduce the remaining Part 4 gap by converting documented source records into short operational-experience answers. These inserts should be edited for personal accuracy before they go into the final written answer.

## Recommended Use

Use a three-example stack:

1. **AI workflow proof:** HeavisideOS Slack assistant eval/release loop.
2. **Cross-workstream coordination:** M365 -> Google Workspace migration control center.
3. **Agency process enforcement:** PVM/GDM direct-source performance review and ads council, if Chris confirms this is the best human/team example.

If final space is tight, combine 1 and 2 only.

## Insert A - Broken / Nonexistent Operating Rhythm

Best source-backed option: M365 -> Google Workspace migration control center.

Source records:

- `/home/cvsloane/SloaneVault/20 - Development/21 - Projects/M365 to Google Workspace Migration/34 - Migration Control Center.md`
- `/home/cvsloane/SloaneVault/20 - Development/21 - Projects/M365 to Google Workspace Migration/00 - Project Overview and Decisions.md`

Source-backed facts:

- The migration touched mail, calendar, contacts, DNS, role aliases, OneDrive/SharePoint, Missive, GHL calendars, Google Voice/Twilio, Windows identity, and Microsoft cleanup.
- The control center is the single control document.
- Lanes are explicitly accepted, gated, pending, or held.
- Microsoft cleanup is not authorized until rollback and dependency gates pass.
- Control rules forbid combining historical data migration, DNS cutover, and Microsoft cleanup into one event.

Candidate answer:

> I inherited a migration that could have become a pile of partial cutovers: mail, calendar, contacts, DNS, aliases, OneDrive/SharePoint, Missive, GHL calendars, Google Voice/Twilio, Windows identity, and Microsoft cleanup were all interdependent. I installed a control-center rhythm: one front-door note, lane states, accepted/gated status, rollback rules, irreversible-decision log, and next operating sequence. The enforcement rule was simple: no cleanup or irreversible change could proceed until the relevant lane gate was accepted. That kept the work from becoming "everything is 90% done"; each lane was accepted, gated, pending, or parked.

Needs Chris confirmation:

- Was this "inherited" from an existing messy state, or self-created as a migration project?
- Was there human resistance, or was the resistance mainly complexity/urgency/entropy?
- What result can be claimed safely: fewer missed dependencies, cleaner cutover, rollback preserved, spend reduction pending, etc.?

## Insert B - Process Enforcement

Best source-backed option: HeavisideOS Slack assistant eval/release loop.

Source records:

- `tasks/evidence/heavisideos-slack-eval-redacted-summary.md`
- `/home/cvsloane/SloaneVault/20 - Development/21 - Projects/HeavisideOS/07 - Implementation/Slack Assistant Usefulness Eval Program.md`
- `/home/cvsloane/SloaneVault/20 - Development/21 - Projects/HeavisideOS/07 - Implementation/Slack Connector - Retrieval and Write Flows.md`

Source-backed facts:

- Eval program tests direct API behavior and Slack execution path.
- Live Slack posting is disabled by default and explicitly opt-in.
- Scoring dimensions: root-cause accuracy, evidence quality, actionability, retrieval relevance, formatting/readability.
- Baseline: 39 active mapped customers, 117 cases, overall 4.055/5.000, retrieval 3.255/5.000, gate `review_required`.
- Final pass: overall 4.467/5.000 and later 4.801/5.000 after structured causal analysis; retrieval 4.964/5.000; gate `pass`; 117/117 retrieval and citation checks passing.

Candidate answer:

> I enforced a release discipline around a Slack assistant because subjective "the answer seems good" was not enough. The process made live Slack posting opt-in, evaluated both API and Slack paths, scored every run by root-cause accuracy, evidence, actionability, retrieval, and formatting, and used a gate instead of vibes. The first full benchmark looked healthy overall but exposed a service-retrieval failure. That forced the work into a fixable category: service-state modeling, tenant communication retrieval, and source coverage. The eval moved from `review_required` to `pass`, with retrieval improving from 3.255/5.000 to 4.964/5.000 across 117 cases `[Observed internal eval]`.

Needs Chris confirmation:

- Use this as process-enforcement answer only if a technical enforcement example is acceptable.
- Otherwise keep it as the AI workflow proof and use PVM/GDM for human/team process enforcement.

## Insert C - Agency Process / Source-Of-Truth Enforcement

Best source-backed option: PVM/GDM performance review and FB ads council.

Source records:

- `/home/cvsloane/SloaneVault/10 - Business/12 - Areas/Shared/Performance Reports/combined_4_26_review.md`
- `/home/cvsloane/SloaneVault/10 - Business/12 - Areas/Shared/Performance Reports/FB Ads Council - PVM GDM Direct Review - 2026-04-22.md`
- `/home/cvsloane/SloaneVault/10 - Business/12 - Areas/Shared/Performance Reports/codex_4_26_review.md`

Source-backed facts:

- The review explicitly ranked source reliability: direct GHL calendar/contact attribution and direct Meta/Google API reads above interpretation.
- Meta `Schedule` columns after Apr 12 were treated as directional only because server-side booked-call sync appeared stale.
- No campaign, budget, GTM, cron, or CRM mutations were made during the source-of-truth review.
- Council output cut five ads and held budgets flat because the account did not clear the scale gate.

Candidate answer:

> In PVM/GDM paid media, I enforced a source-of-truth rule when platform reporting and sales truth diverged. Meta schedule columns were convenient, but the server-side schedule sync looked stale, so the operating rule became: direct GHL calendar/contact attribution and direct platform API reads outrank dashboard interpretation. The council cut waste, held budgets flat, and treated schedule/sale proof as the scale gate. The point was not more reporting; it was preventing the team from optimizing to a broken number.

Needs Chris confirmation:

- Was there actual pushback from a person/team, or was this mostly operator discipline?
- Which exact moment best shows enforcement?
- Which result should be claimed: ads paused, budgets held, source-of-truth restored, or avoided scaling on bad data?

## Compressed Final Section Candidate

Use this if final page space is tight:

> Operationally, my strongest pattern is turning ambiguous work into gates. In the M365 -> Google Workspace migration, the work spanned mail, calendar, DNS, aliases, OneDrive/SharePoint, Missive, GHL, phone routing, Windows identity, and Microsoft cleanup. I installed one control center with lane state, accepted/gated status, rollback rules, and a hard rule that cleanup could not run until dependency gates passed. In HeavisideOS, I used the same pattern for AI quality: live Slack posting stayed opt-in, the assistant had a repeatable eval, and release quality moved from `review_required` to `pass` after category-level retrieval fixes. For PVM/GDM paid media, the rule was direct source truth over convenient dashboards: GHL attribution and direct platform reads beat stale Meta schedule columns. The common mechanism is the same as my Single Grain plan: source check, gate, owner, action, outcome log, memory update.

