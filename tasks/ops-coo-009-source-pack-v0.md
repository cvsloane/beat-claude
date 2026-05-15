# Ops COO 009 - Source Pack v0

Draft status: source-control packet for final submission assembly. This is not submission copy.

Checked date: 2026-05-13.

Purpose: keep confirmed facts, public positioning, captured Eric/X commentary, and internal proof separate so the final answer does not overclaim.

## 1. Challenge Sources

| Source | Path / URL | What it supports | Confidence |
|---|---|---|---|
| Challenge brief | `challenges/ops-coo-009/brief.md` | Required tasks, scenario facts, packet requirements, 2-page written-answer cap, LinkedIn/MMPI requirement. | High |
| Challenge rubric | `challenges/ops-coo-009/scoring_rubric.md` | Strong-answer criteria: judgment, artifact, source labels, proof, AI fluency, failure handling. | High |
| Public scoring guide | `SCORING.md` | Proof tiers, number labels, AI disclosure, artifact requirement, "ties do not advance." | High |
| Claude baseline | `challenges/ops-coo-009/claude_baseline.md` | The answer we must beat in blind review. | High |

## 2. Live GM Role Facts

Source: `https://careers.singlegrain.com/jobs/567472-general-manager-agency`

Observed and rechecked on 2026-05-13:

| Fact | Source basis | How final packet may use it |
|---|---|---|
| Role title is General Manager (Agency). | Live posting header. | Confirm target role. |
| Department / location line says Admin, Remote, Fully Remote. | Live posting location metadata. | Confirm role is remote / fully remote. |
| Compensation is `$185,000 - $225,000 DOE`. | Live posting compensation section. | Confirm compensation range only; do not infer bonus, equity, or profit share. |
| All candidates must complete the COO Operations Challenge before interview consideration. | Live posting links to `ops-coo-009/brief.md`. | Confirms this is the correct challenge for the GM role. |
| Primary KPI is revenue per employee from `$180K` to `$300K-$400K` over 12-18 months. | Live posting role outcome section. | Use as role context if helpful, labeled `[Observed from job posting]`. |
| The role is about operational leverage, CEO buffer, systems, AI-enabled workflows, and financial discipline. | Live posting responsibilities and profile. | Supports the positioning of the answer as operating-loop installation, not generic strategy. |

Constraints:

- Do not state equity, bonus, or profit-sharing because the live GM post does not publish them.
- Do not use compensation/remoteness facts from inferred role mappings.
- Recheck the posting immediately before final submission because job pages can change.

## 3. Official Single Grain Positioning

Sources checked on 2026-05-13:

- `https://www.singlegrain.com/ai-tools/`
- `https://www.singlegrain.com/artificial-intelligence/ai-revenue-agents/`
- `https://www.singlegrain.com/artificial-intelligence/company-intelligence/`

Usable public positioning:

| Theme | Source basis | How final packet may use it |
|---|---|---|
| Single Grain is positioning around managed AI systems, not chatbots alone. | AI Tools page contrasts chatbot use with autonomous AI agent systems. | Align the plan to operationalized agents, not more AI output. |
| Single Brain is framed as an AI agent team. | AI Tools page lists Single Brain with named agents including Oracle, Arrow, Flash, Cyborg, Coach, and Outbound Revenue Pipeline. | Tie the artifact to their agent/workflow framing. |
| Single Brain is scoped to the client's stack, team, and workflows. | AI Tools page says the managed team runs inside Salesforce, Gong, GA4, HubSpot, and Slack. | Support the source-linked memory and data-connected workflow sections. |
| Impact should be measured by business KPIs, not deployment volume. | AI Revenue Agents page emphasizes defined success metrics and KPIs. | Support accepted-work / revenue / churn / margin metrics. |
| Company intelligence is a growth-team category. | Company Intelligence page. | Support the memory / company-brain framing without claiming private internal details. |

Avoid:

- Do not repeat public marketing claims as proof of our own capability.
- Do not cite unsourced internal Single Grain architecture beyond what appears in the brief, job post, or public pages.

## 3A. Candidate Public Profile Metadata

Checked on 2026-05-13:

| Fact | Source basis | How final packet may use it |
|---|---|---|
| Candidate public LinkedIn URL appears to be `https://www.linkedin.com/in/christophersloane/`. | Public footer link on `https://www.csloane.com/about`. | Use only after Chris confirms this is the correct submission URL. |

## 4. Eric Siu Public/X Commentary

Canonical local source:

- `/home/cvsloane/SloaneVault/10 - Business/12 - Areas/Heaviside AI/Expert - Eric Siu and AI-Native Agency Model.md`
- `tasks/ops-coo-009-eric-x-refresh-2026-05-13.md`

Capture method:

- x-accel MCP pull of `@ericosiu` on 2026-05-11.
- 996 posts captured.
- Date range observed: 2025-12-01 through 2026-05-11.
- 384 AI/agent/deployment/services/marketing-system keyword matches.
- Authenticated x-accel refresh on 2026-05-13 using `./node_modules/.bin/tsx scripts/scrape-user-posts.ts ericosiu 300`.
- Refresh collected 328 recent non-retweet posts from 2026-02-04 through 2026-05-13 17:52 UTC.
- Refresh outputs: `/home/cvsloane/SloaneVault/20 - Development/23 - Tech Resources/ericosiu-posts.json` and `/home/cvsloane/SloaneVault/20 - Development/23 - Tech Resources/X Account Study - ericosiu.md`.

Important caveat:

- Treat this as a captured public corpus refreshed through 2026-05-13 17:52 UTC, not a guarantee of every later post.
- Use the X corpus as directional alignment and source context. Role facts still come from the live GM posting and official Single Grain pages.

Themes to reflect in the plan:

| Eric/X theme | Submission implication |
|---|---|
| Closed loops beat open-loop services. | Every output must end as action, rejection, owner assignment, outcome log, and memory update. |
| Services-as-software changes agency economics. | GM installs managed growth loops and operating infrastructure, not just headcount coordination. |
| Company brain / Single Brain matters. | The memory layer is a central operating primitive, not a knowledge-base afterthought. |
| Reliable agents beat flashy agents. | Gates, source checks, kill criteria, and failure handling should be more prominent than demos. |
| Slack/data-connected workflows matter. | HeavisideOS Slack summaries are useful as a grounded analog, but only with honest maturity limits. |
| Single Brain in Slack/Teams is a change-management path. | The primary proof should emphasize Slack-native workflow adoption and evaluated assistant improvement. |
| Agent-led projects create a communication bottleneck. | The command queue and routing model should make what matters visible without making Eric review everything. |
| Beat AI/Beat Claude is a proof-of-work filter. | The final packet needs artifact depth, evidence, and polish; generic commentary is weak. |
| Model/tool spend needs hierarchy. | Add cost/tool-spend governance as a failure mode or review dimension. |
| AI should be measured by accepted work, speed-to-ship, revenue influenced, churn prevented, and margin. | Score crons and agent outputs by outcomes, not volume. |
| Scoped agents win; overbuilt agents fail. | The artifact should simplify routing and kill noisy crons instead of creating a large new bureaucracy. |
| Every marketer/operator becomes a builder. | Chris's proof should show he builds operating tools, gates, memory, and eval loops himself. |

## 5. Internal Proof Sources

| Proof source | What it can support | Evidence tier if attached safely | Shareability |
|---|---|---:|---|
| `tasks/evidence/heavisideos-slack-eval-redacted-summary.md` | Measured HeavisideOS Slack assistant eval improvement; source-check and gate discipline. | Tier 4 | Safe summary if no customer identifiers are added. |
| Raw HeavisideOS eval reports in `/home/cvsloane/dev/heaviside-os/tmp/assistant-evals/slack-usefulness/` | Before/after eval details. | Tier 4 | Do not attach raw files without redaction; they contain customer names. |
| x-accel source/code and vault notes | Gated content scoring, approval states, performance learning loop. | Tier 3, Tier 4 if paired with performance snapshot. | Need choose sanitized examples before sharing. |
| SloaneVault/qmd/project notes | Durable memory, source records, lessons, decision continuity. | Tier 3 | Safe only after excluding private client/secrets content. |
| Decision-council skill and safe artifacts | Yellow-tier expert judgment mechanism. | Tier 2-3 | Need one safe artifact or sanitized example. |
| M365/Google Workspace migration control center | Cross-workstream coordination, gates, status ownership. | Tier 2-3 | Likely safe if private account details are removed. |
| PVM/GDM operating examples | Agency-relevant cadence, process enforcement, client delivery systems. | TBD | Requires Chris confirmation and redaction. |

## 6. Claims Allowed In Final Copy

Safe if phrased carefully:

- "I built and use gated scoring / routing patterns in x-accel." Label x-accel as separate from HeavisideOS.
- "I use SloaneVault as a durable memory layer." Treat it as mature memory, not as a full company OS for Single Grain.
- "HeavisideOS currently proves Slack-based client/performance summarization and evaluated assistant improvement." Do not claim it fully runs the company.
- "Decision councils are a yellow-tier judgment pattern for ambiguous high-value calls." Do not make them the default routing step.
- "The proposed Single Grain artifact is a transfer of proven primitives into the brief's context." Do not imply it already operates inside Single Grain.

Unsafe or blocked:

- "HeavisideOS runs Heaviside end-to-end." False/overstated.
- "x-accel is part of HeavisideOS." False.
- "The GM role includes bonus/equity/profit share." Not published.
- "All Single Grain roles map to these challenges." Some mappings are inferred only.
- Any raw customer names, private Slack/client details, secrets, or unredacted internal reports.
