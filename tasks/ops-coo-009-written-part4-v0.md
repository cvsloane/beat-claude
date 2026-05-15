# Ops COO 009 - Written Part 4 v0

Draft status: working source draft for the written answer. Not final submission copy.

Number-source policy: challenge facts are labeled `[Observed from brief]`. Internal proof is labeled `[Observed internal eval]` or `[Observed internal source]`. Proposed operating claims are `[Assumed]`.

## Part 4 - Operating Edge

### AI Workflow I Have Automated / Augmented

Primary proof source: `tasks/evidence/heavisideos-slack-eval-redacted-summary.md`.

The cleanest example is the HeavisideOS Slack assistant eval loop. The workflow problem was not "can an AI answer in Slack?" It was "can the assistant answer client-status, service, and root-cause questions with enough retrieval quality and actionability to trust inside an operating workflow?"

I built a repeatable eval program around the Slack assistant:

- API-only default so tests do not post into live customer channels unless explicitly allowed.
- A suite across 39 active mapped customers `[Observed internal eval]`.
- 3 questions per tenant `[Observed internal eval]`.
- 117 total eval cases `[Observed internal eval]`.
- Weighted scoring for root-cause accuracy, evidence, actionability, retrieval, and formatting.
- Gate status that can mark a run `review_required` or `pass`.

Before improvement, the production benchmark was:

- Overall: 4.055 / 5.000 `[Observed internal eval]`.
- Retrieval: 3.255 / 5.000 `[Observed internal eval]`.
- Gate: `review_required` `[Observed internal eval]`.

After targeted fixes to service-state retrieval, Slack fact update paths, and tenant-specific communication retrieval, the production benchmark reached:

- Overall: 4.467 / 5.000 `[Observed internal eval]`.
- Retrieval: 4.964 / 5.000 `[Observed internal eval]`.
- Gate: `pass` `[Observed internal eval]`.
- Retrieval non-empty checks: 117 pass / 0 fail `[Observed internal eval]`.
- Citation presence checks: 117 pass `[Observed internal eval]`.

The operating lesson maps directly to Single Grain: aggregate AI quality can look fine while one category is failing badly. You need category gates, source checks, repeatable reports, and a memory loop that turns failures into fixes. That is the same discipline I would apply to Oracle, Flash, Cyborg, and Alfred.

Important limit: this proves measured assistant improvement and retrieval/action-loop discipline. It does not mean HeavisideOS is already a fully mature company operating system.

### How I Would Evaluate Oracle's 12 Quick-Win Keywords `[Observed from brief]`

I would not pretend to be the SEO expert. I would verify whether Oracle's recommendations are decision-grade.

For each keyword, I would check:

- Source: does the GSC/GA4 data match the recommendation?
- Existing page: is there already a page ranking, or is Oracle smuggling a new-content project into a "quick win" label?
- Intent: is the query commercial/strategic enough to matter, or just traffic vanity?
- Effort: can the change be done in <2 hours `[Assumed]`, or does it need a deeper content/product decision?
- Risk: does the change make a public strategic claim, touch a customer-sensitive case study, or alter core positioning?
- Owner: can SEO/content execute today?
- Feedback: after publishing, do ranking, clicks, assisted conversions, or qualified pipeline move?

Then I would route the list through the same gate: source-verified existing-page changes can go green; new pages, mixed intent, or strategic positioning go yellow; public claims or customer-sensitive pages go red.

### COO / GM In 2028

At an AI-native services company in 2028 `[Observed from brief]`, the GM is not primarily the person who asks for more output. The GM is the person who owns the operating loop around the output.

The role looks like:

- Define what agents may do alone, what needs owner review, and what stays human.
- Measure accepted work, speed-to-ship, revenue influenced, churn prevented, and margin improvement.
- Kill workflows that create review debt.
- Maintain the company memory so repeated decisions become rules, prompts, SOPs, or kill criteria.
- Protect the CEO's attention for strategic, relationship, pricing, and public-risk decisions.
- Make every human operator better at building, reviewing, and improving AI workflows.

The risk is over-automation of judgment. The best GM will push automation hard on reversible, source-verified, known-pattern work, while defending human control over trust, pricing, public claims, strategic accounts, and people decisions.

## Operational Experience - Needs Chris Confirmation

This section cannot be finalized without choosing the real experience examples Chris wants to stand behind. Do not fabricate resistance, team behavior, or cross-department dynamics.

Recommended source candidates:

1. **HeavisideOS Slack assistant eval loop** `[Candidate example]`: strongest for "processes actually get followed" because it has a runner, config, gates, source records, reports, and before/after metrics.
2. **M365 / Google Workspace migration control center** `[Candidate example]`: strongest for "keeping trains running across workstreams" because it involved mail, calendar, contacts, OneDrive/SharePoint, DNS, phone/Twilio, GHL, risk ledgers, runbooks, and acceptance gates.
3. **PVM/GDM operating work** `[Candidate example]`: likely strongest for agency-relevant operating rhythm, but needs Chris to choose the specific cadence/process example and what resistance looked like.

Questions to answer before final copy:

- What broken or nonexistent operating rhythm is the cleanest true example?
- What exact cadence did you install?
- Who resisted or ignored it, and why?
- What mechanism made compliance easier than non-compliance?
- What measurable result or operational change followed?

## MMPI-Style Self-Assessment - Not Yet Drafted

This is required by the brief and must be based on Chris's own LLM-assisted self-assessment. Do not generate a fake MMPI profile.

Use a separate prompt and summarize:

- operating strengths,
- predictable failure modes,
- stress behavior,
- relationship with high-velocity founders,
- follow-through compensating systems,
- how the profile maps to the Single Grain GM role.
