# Ops COO 009 - Evidence Log v0

Draft status: working evidence log. Not final submission copy.

Proof tier reference from `SCORING.md`:

- Tier 0: claims only.
- Tier 1: screenshots.
- Tier 2: demo artifact.
- Tier 3: logs or source records.
- Tier 4: before/after data.
- Tier 5: independent verification.

## Evidence Table

| Claim | Number source labels | Proof tier | Evidence / source | Shareability / caveat |
|---|---|---:|---|---|
| The `ops-coo-009` brief describes 48 crons, 50+ daily messages, 15+ daily review items, 23 pending items, 2 ClickFlow churn customers, 3 stale prospects, and 15 Oracle quick-win keywords. | `[Observed from brief]` | 3 | `challenges/ops-coo-009/brief.md` | Shareable; public repo brief. |
| Eric's intended load is 3-5 decisions/day, not 15+ review items/day. | `[Observed from brief]` | 3 | `challenges/ops-coo-009/brief.md` | Shareable; public repo brief. |
| The GM role is remote and compensation is `$185K-$225K DOE`. | `[Observed from GM posting]` | 3 | `https://careers.singlegrain.com/jobs/567472-general-manager-agency`, rechecked 2026-05-13 | Reconfirm before final submission if time has passed. |
| Candidate public LinkedIn URL appears to be `https://www.linkedin.com/in/christophersloane/`. | `[Observed public source]` | 3 | `https://www.csloane.com/about` footer link | Candidate value only. Chris should confirm before submission. |
| Single Grain publicly frames Single Brain as a managed AI agent team connected to customer stack/workflows/data. | `[Observed public source]` | 3 | `https://www.singlegrain.com/ai-tools/`; project note source-check section | Shareable; public source. |
| Eric/X public commentary emphasizes closed loops, services-as-software, company brain / Single Brain, reliable agents, Slack/data-connected workflows, and accepted-work metrics. | `[Observed captured X corpus]` | 3 | `Expert - Eric Siu and AI-Native Agency Model`, x-accel pull of `@ericosiu` on 2026-05-11 | Captured corpus, not guaranteed current after 2026-05-11. Use as commentary, not role fact. |
| I have used a score/gate pattern for AI-generated content before action. | `[Observed internal source]` | 3 | `tasks/evidence/x-accel-gate-redacted-summary.md`; `/home/cvsloane/dev/x-accel/src/mcp/tools/publish.ts`; `/home/cvsloane/dev/x-accel/src/lib/publish-gate.ts`; `/home/cvsloane/dev/x-accel/src/lib/publish-gate-policy.ts` | Share code excerpts carefully; x-accel is separate from HeavisideOS. |
| x-accel performance data shows a measured content feedback loop. | `[Observed internal analytics]` | 3-4 | `SloaneVault/20 - Development/21 - Projects/X-Accel/03 - Analytics/performance-90day-2026-04-07.md` | Use only as support; it does not prove every performance result came from the gate. |
| HeavisideOS Slack assistant eval improved from overall 4.055/5.000 to 4.467/5.000, with a later structured-analysis pass at 4.801/5.000, and retrieval improved from 3.255/5.000 to 4.964/5.000 across 117 cases. | `[Observed internal eval]` | 4 | `tasks/evidence/heavisideos-slack-eval-redacted-summary.md`; raw reports under `/home/cvsloane/dev/heaviside-os/tmp/assistant-evals/slack-usefulness/` | Raw reports include customer names; submit redacted metrics only. |
| HeavisideOS Slack assistant final eval gate passed after targeted retrieval/service-state fixes. | `[Observed internal eval]` | 4 | Final report `20260227-015739/report.md`; eval runbook | Raw reports include customer names; submit redacted metrics only. |
| SloaneVault is a durable memory/source-record system used across projects. | `[Observed internal source]` | 3 | `tasks/evidence/sloanevault-memory-redacted-summary.md`; `/home/cvsloane/SloaneVault/`; qmd status; project notes; lessons files | Share high-level stats/structure, not sensitive vault contents. |
| Decision councils are a reusable judgment mechanism for high-value ambiguous decisions. | `[Observed internal source]` | 2-3 | `tasks/evidence/decision-council-redacted-summary.md`; `/home/cvsloane/dev/open-agents/skills/decision-council/`; council notes in SloaneVault | Use workflow summary or a safe/anonymized example only. |
| HeavisideOS is currently used in practice for SlackBot summaries/query flows around recent client communications and paid ads/SEO/business-performance context. | `[Observed internal source]` | 3 | HeavisideOS Slack connector docs and code; project lesson | Keep maturity caveat. Do not claim it runs the company. |
| The proposed Single Grain score-to-route gate can reduce Eric's default review burden. | `[Assumed operating design]` | 2 | `tasks/ops-coo-009-operating-artifact-v0.md`; `tasks/ops-coo-009-written-part2-v0.md` | Proposed artifact, not observed Single Grain result. |
| The cron audit kills/pause 2 sample crons and improves/keeps the rest based on action rate and review debt. | `[Assumed verdict from observed brief data]` | 2-3 | `tasks/ops-coo-009-operating-artifact-v0.md`; `tasks/ops-coo-009-written-part3-v0.md`; brief sample cron data | Verdicts are proposed, but action rates are brief facts. |
| Operational experience example: inherited broken rhythm and installed a cadence. | `[Observed internal source]` for mechanism; personal narrative pending | 3 for source records; final story pending | `tasks/ops-coo-009-operational-experience-inserts-v0.md`; M365 migration control center notes | Candidate copy exists. Chris must confirm whether this is the right story and what changed afterward. |
| Operational experience example: enforced a process people pushed back on. | `[Observed internal source]` for mechanism; resistance pending | 3-4 for source records/eval metrics; final story pending | HeavisideOS Slack eval loop; PVM/GDM source-of-truth performance review | Candidate copy exists. Do not claim human resistance unless Chris confirms it. |
| Operational experience example: kept multiple departments/workstreams running with competing priorities. | `[Observed internal source]` | 3 | M365 migration control center; `tasks/ops-coo-009-operational-experience-inserts-v0.md` | Strongest source-backed cross-workstream example; still needs Chris confirmation before final. |
| MMPI-style self-assessment. | `[Assumed candidate self-assessment]` | 0-1 until Chris approves | `tasks/ops-coo-009-mmpi-style-self-assessment-candidate.md`; `tasks/ops-coo-009-final-written-v1-candidate.md` | Candidate only. Required brief item still needs Chris review/approval. |
| AI usage disclosure. | `[Observed workflow]` | 0-2 | This session's artifacts, source checks, and final disclosure | Must describe tools used and what was manually checked. |

## Claims To Avoid Or Demote

- Do not claim HeavisideOS is a mature company-wide operating system.
- Do not claim x-accel is part of HeavisideOS.
- Do not claim Single Grain role facts unless sourced from the live posting or repo.
- Do not claim direct agency-scale equivalence to Single Grain's 45-person organization unless supported by a real example.
- Do not attach raw HeavisideOS eval reports externally without redacting customer names.

## Open Evidence Gaps

1. Chris must confirm or edit the operational experience story for broken cadence / process enforcement.
2. Chris must confirm whether the M365 migration is the cross-workstream example to use.
3. Chris must review/edit/approve the MMPI-style self-assessment candidate or supply another one.
4. Decide which optional internal proof summaries are safe to attach externally.
5. Confirm or replace the candidate public-source LinkedIn URL.
6. Reconfirm GM posting compensation/remoteness immediately before final submission.
