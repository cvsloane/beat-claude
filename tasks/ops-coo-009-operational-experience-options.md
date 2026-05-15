# Ops COO 009 - Operational Experience Options

Draft status: candidate examples for Chris to approve/edit. Do not submit without user confirmation.

Purpose: reduce the remaining personal-input burden by turning documented source records into possible answers for the operational-experience prompts.

## Option A - M365 / Google Workspace Migration Control Center

Best for:

- keeping trains running across multiple workstreams,
- installing operating rhythm,
- enforcing gates under complexity.

Source records:

- `/home/cvsloane/SloaneVault/20 - Development/21 - Projects/M365 to Google Workspace Migration/34 - Migration Control Center.md`
- `/home/cvsloane/SloaneVault/20 - Development/21 - Projects/M365 to Google Workspace Migration/00 - Project Overview and Decisions.md`

Source-backed facts:

- The migration control center is the single control document for Office 365 -> Google Workspace migration.
- It tracks project state, gates, lane docs, and next controlled action.
- Accepted lanes include Batch 1 `sloanes.me` mail/DNS cutover, Batch 2 Heaviside/brand-domain mail/DNS cutover, Microsoft-to-Gmail catch-up, Google inbound/outbound auth, role aliases, active-user Calendar API access, OneDrive/SharePoint migration lanes, Chris/Jason Google Voice tests, and Twilio voice-routing architecture test.
- Still-gated lanes include Missive, Jason calendars, GHL smoke tests, HG-MAIN Windows identity, desktop cutover, phone production ports, and Microsoft cleanup.
- Control rules explicitly prevent combining historical data migration, DNS cutover, and Microsoft cleanup into one event.
- Decisions are recorded in a canonical decision note before downstream docs are updated.

Candidate answer shape:

> I inherited a migration that could easily have become a pile of partial cutovers: mail, calendar, contacts, OneDrive/SharePoint, DNS, role accounts, Missive, GHL calendars, Google Voice, Twilio, Windows identity, and Microsoft cleanup all had dependencies. I installed a control-center model: one front-door note, lane table, accepted/gated state, irreversible-decision log, and next operating sequence. The enforcement mechanism was that no cleanup or irreversible change could happen unless the relevant gate was accepted. That kept the work from becoming "everything is 90% done"; each lane was either accepted, gated, or explicitly parked.

Needs Chris confirmation:

- Was there human resistance, or was the main resistance complexity/entropy?
- Which concrete moment best shows enforcement?
- What result should be claimed in final copy?

## Option B - HeavisideOS Slack Assistant Eval / Release Loop

Best for:

- enforcing process,
- AI fluency with measured before/after,
- turning quality failures into operating rules.

Source records:

- `tasks/evidence/heavisideos-slack-eval-redacted-summary.md`
- `/home/cvsloane/SloaneVault/20 - Development/21 - Projects/HeavisideOS/07 - Implementation/Slack Assistant Usefulness Eval Program.md`
- `/home/cvsloane/SloaneVault/20 - Development/21 - Projects/HeavisideOS/07 - Implementation/Slack Connector - Retrieval and Write Flows.md`

Source-backed facts:

- Eval runner covers API behavior and Slack execution path.
- Safe default is API-only; live Slack posting is explicit opt-in.
- Scoring dimensions are root-cause accuracy, evidence quality, actionability, retrieval relevance, and formatting/readability.
- Baseline report covered 39 active mapped customers, 3 questions each, 117 cases.
- Overall improved from 4.055/5.000 to 4.467/5.000.
- Retrieval improved from 3.255/5.000 to 4.964/5.000.
- Gate moved from `review_required` to `pass`.

Candidate answer shape:

> I installed a release discipline around an AI Slack assistant because subjective "that answer seems good" was not enough. I created a repeatable eval suite across active mapped customers, made live Slack posting opt-in, scored root-cause accuracy/evidence/actionability/retrieval/formatting, and used the gate to classify whether a build could pass. The process forced quality issues into categories. It showed that aggregate quality hid a service-retrieval failure, which we then fixed through service-state and tenant-sync changes. That moved the run from review-required to pass.

Needs Chris confirmation:

- Was this resisted by anyone, or was it mainly self-enforced engineering discipline?
- Is this too technical to use for the "operating rhythm" question, and better kept as the AI workflow proof?

## Option C - PVM/GDM Operating Cadence

Best for:

- most agency-relevant experience,
- client delivery rhythm,
- process enforcement with human team dynamics.

Current source state:

- We have broad business context, but not enough confirmed details in this packet to write the story without Chris.

Needed from Chris:

- What cadence existed before?
- What cadence did you install?
- Which team members or functions had to comply?
- What was the pushback?
- What metric or operational result improved?

Candidate answer shape:

> TBD after Chris confirms facts. This may be the strongest role-fit story if it includes paid ads/SEO/client comms/reporting/lead quality and shows real human enforcement.

## Recommendation

Use:

1. **M365 migration control center** for cross-workstream coordination.
2. **HeavisideOS Slack eval loop** for process enforcement and AI workflow proof.
3. **PVM/GDM cadence** only if Chris can provide a crisp human/team-resistance story.

Final submission should avoid overusing one example for every prompt. Ideally:

- AI workflow proof: HeavisideOS Slack eval.
- Cross-workstream coordination: M365 migration control center.
- Broken operating rhythm / process enforcement: PVM/GDM if Chris can confirm; otherwise HeavisideOS eval/release loop.
