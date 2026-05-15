# Ops COO 009 - Evidence Log v2

Proof tier reference from `SCORING.md`:

- Tier 0: claims only.
- Tier 1: screenshots.
- Tier 2: demo artifact.
- Tier 3: logs or source records.
- Tier 4: before/after data.
- Tier 5: independent verification.

This evidence log maps the v2 written answer and operating artifact to proof tiers and source labels.

## Evidence Table

| Claim | Number source labels | Proof tier | Evidence / source | Shareability / caveat |
|---|---|---:|---|---|
| The `ops-coo-009` brief describes `48` crons, `50+` daily messages, `15+` daily review items, `23` pending items, `2` ClickFlow churn customers, `3` stale prospects, `15` inherited Oracle quick-win keywords, and a separate Part 4 evaluation prompt for `12` quick-win keywords from last night. | `[Observed from brief]` | 3 | `challenges/ops-coo-009/brief.md` | Shareable; public repo brief. |
| Eric's intended load is `3-5` decisions/day and `15` minutes/day, not `15+` review items/day or `60+` minutes/day. | `[Observed from brief]` | 3 | `challenges/ops-coo-009/brief.md` | Shareable; public repo brief. |
| The brief's CEO profile says Eric is ENTJ / `8w7`, Kolbe Quick Start `9`, Follow Thru `2`, self-rated weak on follow-through, organization, and workflow consistency, and starts `10` things while finishing `3`. | `[Observed from brief]` | 3 | `challenges/ops-coo-009/brief.md` | Treat as the central operating clue, not trivia. |
| The GM role is remote and compensation is `$185K-$225K DOE`. | `[Observed from GM posting]` | 3 | `https://careers.singlegrain.com/jobs/567472-general-manager-agency`, verified 2026-05-13. | Recheck before upload because public job pages can change. |
| Single Grain's GM mandate is to increase revenue per employee from `$180K` to `$300K-$400K`. | `[Observed from GM posting]` | 3 | `https://careers.singlegrain.com/jobs/567472-general-manager-agency`, verified 2026-05-13. | Shareable; public role posting. |
| Single Grain publicly positions the agency around AI-native execution, pipeline/revenue accountability, and scaling results without scaling headcount. | `[Observed from public websites]` | 3 | `https://www.singlegrain.com/` and `https://www.singlegrain.com/landing/`, verified 2026-05-13. | Use as positioning/context, not as internal performance proof. |
| Single Brain is publicly described as a managed AI agent team inside Salesforce, Gong, GA4, HubSpot, and Slack. | `[Observed from public websites]` | 3 | `https://www.singlegrain.com/ai-tools/`, verified 2026-05-13. | Public product/positioning page. |
| The standalone Single Brain site frames the architecture as one trusted brain, one commander, and a specialist fleet with isolated client deployments and an SSR trust standard. | `[Observed from public websites]` | 3 | `https://singlebrain.com/`, verified 2026-05-13. | Public product/positioning page; do not claim actual internal deployment details beyond the page. |
| ClickFlow publicly supports a strategy -> writing -> reporting loop and developer-accessible workflows driven by GSC/GA4, CMS publishing, MCP/REST, and AI visibility data. | `[Observed from public websites]` | 3 | `https://www.clickflow.com/`, `https://docs.clickflow.com/`, and `https://docs.clickflow.com/capabilities/analytics`, verified 2026-05-13. | Public docs/product pages. |
| Karrot publicly supports LinkedIn ABM personalization, HubSpot pipeline reporting, deal activity timelines, and personalized landing pages. | `[Observed from public websites]` | 3 | `https://karrot.ai/` and `https://www.singlegrain.com/ai-marketing-tools/`, verified 2026-05-13. | Public product pages. |
| Single Grain's AI Revenue Agents guide emphasizes data quality, bidirectional CRM/marketing automation sync, staged rollout, approval rules, escalation thresholds, recovery protocols, and KPIs. | `[Observed from public websites]` | 3 | `https://www.singlegrain.com/artificial-intelligence/ai-revenue-agents/`, verified 2026-05-13. | Public thought-leadership page; use for calibration. |
| Single Grain's Company Intelligence guide frames the system as an active intelligence layer across customer behavior, internal ops data, predictive modeling, multi-agent execution, governance, and audit logging. | `[Observed from public websites]` | 3 | `https://www.singlegrain.com/artificial-intelligence/company-intelligence/`, verified 2026-05-13. | Public thought-leadership page; use for calibration. |
| Eric publicly wrote that Single Grain has rebuilt operations around Claude Code/OpenClaw and saves `90+` hours/month on workflows that previously required dedicated headcount. | `[Observed from public commentary]` | 3 | `https://newsletter.levelingup.com/p/how-openclaw-claude-code-will-shift-your-business-completely`, verified 2026-05-13. | Public founder commentary, not a verified role fact. |
| Heaviside started in 2011 and Chris remains founder/operator. | `[Observed applicant claim]` | 0-1 | Applicant interview notes: `tasks/ops-coo-009-applicant-interview-notes.md`. | Applicant claim; confirm before final upload. |
| Chris spent the last `2` years re-engineering Heaviside, PVM, and GDM around an intelligence layer, software-driven workflows, and CLI-driven operations. | `[Observed applicant claim]` | 0-2 | Applicant interview notes; supporting repo/vault artifacts can be summarized if approved. | Applicant claim; share only high-level descriptions unless artifacts are redacted. |
| Heaviside moved from `$55.6K` revenue/FTE and `2.6%` net margin in 2023 to `$77.2K` and `14.2%` in 2024, `$90.0K` and `12.9%` in 2025, and `$120.1K` and `17.1%` in 2026 Q1. | `[Observed internal P&L / Estimated FTE]` | 4 | Native QuickBooks ProfitAndLoss snapshots in Agency Financials plus labor-spend-to-FTE model; summarized in `heaviside-rpe-profitability-redacted-summary.md`, with internal working calculation available for walkthrough. | Attach the redacted summary only. Do not attach raw confidential P&L exports. |
| Current active-plus-paused Heaviside MRR is about `$70.7K/mo`, or `$848K` annualized, and roughly `$126K` revenue per paid-team FTE using `6.71` paid-team FTE. | `[Observed internal customer/payroll records]` | 3-4 | Agency Financials DB query and payroll/FTE calculation summarized in `tasks/ops-coo-009-heaviside-rpe-calculation.md`. | Useful backup; main written answer uses historical P&L basis instead. |
| HG Market Report replaced manual data retrieval and slide deck assembly with live report, sales presentation, and follow-up sequence. | `[Observed applicant claim]` | 1-3 | Applicant interview notes; product/source artifacts summarized in `heaviside-sales-delivery-automation-redacted-summary.md`. | Do not attach customer-specific examples without redaction. Stronger with redacted Loom or demo report. |
| HG Market Report saves roughly `1-2` hours per sales report. | `[Estimated applicant claim]` | 0-2 | Applicant estimate in interview notes. | Label as estimate; stronger if later backed by time logs or before/after task records. |
| HG SEO Commander automates SEO analysis, reporting, GBP posts, blog posts, link-building deliverables, and reporting. | `[Observed applicant claim]` | 1-3 | Applicant interview notes; product/source artifacts summarized in `heaviside-sales-delivery-automation-redacted-summary.md`. | Use "link-building deliverables," not private/internal link tactic labels. Stronger with redacted Loom or demo report. |
| HG SEO Commander saves at least `3-4` hours per client per month. | `[Estimated applicant claim]` | 0-2 | Applicant estimate in interview notes. | Label as estimate; stronger if later backed by time logs. |
| The GBP-post bug/process example shows process enforcement through CLI tooling and adoption by making the operator more capable. | `[Observed applicant claim]` | 0-2 | Applicant interview notes. | Good narrative proof; not independently verified yet. |
| SloaneVault is a durable memory/source-record system used across projects. | `[Observed internal source]` | 3 | SloaneVault/qmd index, project notes, lessons files, and decision records. | Share high-level structure only, not sensitive vault contents. |
| x-accel provides a proven scoring/gate analogue for AI-generated content before action. | `[Observed internal source]` | 3 | x-accel publish-gate source records and redacted workflow summary. | x-accel is separate from HeavisideOS; summarize unless code excerpts are approved. |
| Decision councils are a reusable judgment mechanism for high-value ambiguous decisions. | `[Observed internal source]` | 2-3 | Decision Council workflow source record and safe/anonymized council artifact. | Use only as supporting proof; do not make every decision a council. |
| HeavisideOS is currently used in practice for SlackBot summaries/query flows around recent client communications and paid ads/SEO/business-performance context. | `[Observed internal source]` | 3 | HeavisideOS Slack connector source records and project lesson. | Do not claim HeavisideOS runs the company end-to-end. |
| HeavisideOS Slack assistant eval improved from overall `4.055/5.000` to `4.467/5.000`, later `4.801/5.000`, and retrieval improved from `3.255/5.000` to `4.964/5.000` across `117` cases. | `[Observed internal eval]` | 4 | Redacted HeavisideOS Slack assistant eval summary; raw report IDs `20260226-225557`, `20260227-015739`, and `20260227-025448`. | Optional proof. Submit redacted metrics only; raw reports contain customer names. |
| Eric/X public commentary emphasizes Single Brain/company-brain workflows, revenue agents, service-as-software, proof-of-work hiring, Slack/Teams adoption, and model/tool-spend governance. | `[Observed captured X corpus]` | 3 | Authenticated x-accel pull of `@ericosiu`, refreshed 2026-05-13 through 17:52 UTC. | Public commentary, not role fact; do not overfit current copy to stale posts. |
| The proposed score-to-route gate can reduce Eric's default review burden. | `[Assumed operating design]` | 2 | `tasks/ops-coo-009-operating-artifact-v2.md`. | Proposed artifact, not observed Single Grain result. |
| The cron audit kills/pauses `2` sample crons and improves/keeps the rest based on action rate and review debt. | `[Assumed verdict from observed brief data]` | 2-3 | `tasks/ops-coo-009-operating-artifact-v2.md`; sample cron data from public brief. | Verdicts are proposed; action rates are brief facts. |
| MMPI-style self-assessment: founder first; INTP / `6w5` with strong Type `1`; Kolbe `9-4-3-2`; high agency, detail-oriented, systems-minded, ambiguity-tolerant; risk is overbuilding/capability sprawl. | `[Observed applicant self-assessment]` | 1-2 | `[[30 - Personal/37 - Knowledge Graph/people/chris-sloane/personality-and-operating-profile]]`, applicant interview notes, candidate profile addendum, and v2 written answer. | Self-assessment, not validated clinical psychometrics; applicant should approve before final upload. |
| AI usage disclosure. | `[Observed workflow]` | 1-2 | `tasks/ops-coo-009-ai-disclosure-v2.md`. | Submit final disclosure. |

## Claims To Avoid Or Demote

- Do not claim HeavisideOS is a mature company-wide operating system.
- Do not claim x-accel is part of HeavisideOS.
- Do not claim Heaviside is already at Single Grain's `$300K-$400K` revenue/FTE target.
- Do not imply Heaviside's FTE reduction was artificial shrinkage; frame it as sensible simplification after overstaffing, supported by improved profitability.
- Do not claim direct agency-scale equivalence to Single Grain's `45`-person organization without a verified source example.
- Do not attach raw HeavisideOS eval reports, raw vault notes, private client data, customer screenshots, or raw P&L exports externally without redaction.

## Final Recheck

- Reconfirm the GM posting before upload.
- Confirm or replace LinkedIn URL.
- Re-scan attachments for customer names, private client data, secrets, tokens, and raw report tables.
- Confirm applicant approval of self-assessment and operating-experience claims.
- Re-run number-label audit after edits.
