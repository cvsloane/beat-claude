# Ops COO 009 - Packet v2 Score Review

Status: score review after rebuilding the v2 packet, adding public-website calibration, adding the Eric/Chris operating-profile match, and adding the redacted proof summaries.

Reviewed files:

- `tasks/ops-coo-009-written-v2-from-scratch.md`
- `tasks/ops-coo-009-operating-artifact-v2.md`
- `tasks/ops-coo-009-evidence-log-v2.md`
- `tasks/ops-coo-009-ai-disclosure-v2.md`
- `tasks/ops-coo-009-candidate-profile-v2.md`
- `tasks/evidence/heaviside-rpe-profitability-redacted-summary.md`
- `tasks/evidence/heaviside-sales-delivery-automation-redacted-summary.md`
- `tasks/evidence/heavisideos-slack-eval-redacted-summary.md`

Scoring sources:

- `challenges/ops-coo-009/claude_baseline.md`
- `challenges/ops-coo-009/scoring_rubric.md`
- `SCORING.md`

## Mechanical QA

| Check | Result |
|---|---|
| Written answer word count | `1439` words |
| Written answer compact PDF | `tasks/exports/ops-coo-009-written-v2-from-scratch-compact.pdf` |
| PDF page count | `2` pages |
| QA helper | Pass |
| Candidate/blocker language | Pass |
| Required sections | Pass: What stays human, What breaks, AI usage, Evidence, MMPI, LinkedIn |
| Local path scan | Pass |
| Sensitive-info scan | Warning only: redaction warnings in evidence/proof files; no secrets or raw client data detected by helper. |

## Score Posture

| Rubric gate | Read |
|---|---|
| Real judgment | Strong. Clear triage order, hard cron kills, CEO decision boundary, and explicit tradeoffs. |
| Execution artifact | Strong. Artifact includes command queue, gate, cron audit, dashboard, memory schema, cadence, human boundary, and failure modes. |
| Source-labeled specificity | Strong. Written answer and artifact label substantive numbers. Final human review should still scan after edits. |
| Proof quality | Strong. Evidence log now points to a Tier 4 RPE/profitability artifact, a Tier 4 HeavisideOS eval artifact, and Tier 2-3 sales/delivery automation artifacts. |
| AI fluency with limits | Strong. Shows automation, source checks, routing, memory, councils, and human boundaries without overclaiming HeavisideOS maturity. |
| Failure handling | Strong. Written answer and artifact both name failure modes and response mechanisms. |
| Communication | Strong. Written answer is direct and fits `2` pages. Artifact is longer but inspectable. |
| Public-site fit | Strong. Recommendations now reflect Single Grain's public model: AI execution inside Slack/CRM/analytics/CMS, Single Brain command/fleet architecture, ClickFlow roadmap workflows, Karrot/HubSpot pipeline writeback, and SSR trust standards. |
| CEO operating fit | Strong. Packet now addresses the brief's explicit Eric profile: high Quick Start, low Follow Thru, weak workflow consistency, `10` starts / `3` finishes, and the need for a GM who turns starts into closed loops. |

## Internal Score Read

Not an official point score, but the current packet posture against the public rubric:

| Rubric area | Current read |
|---|---|
| Real judgment | `9/10` |
| Execution artifact | `9/10` |
| Source-labeled specificity | `9/10` |
| Proof quality | `8.75-9/10` |
| AI fluency with limits | `9/10` |
| Failure handling | `8.5-9/10` |
| Communication | `8-8.5/10` |
| Baseline-beating likelihood | Strong, assuming reviewer accepts the redacted evidence summaries and attachments as credible. |

## Proof Artifact Upgrade

The new attachment set improves proof quality because it separates three different proof jobs:

| Proof job | Artifact | Scoring effect |
|---|---|---|
| GM economic proof | `heaviside-rpe-profitability-redacted-summary.md` | Moves the role-level leverage claim into Tier 4 before/after data. |
| Measured AI workflow proof | `heavisideos-slack-eval-redacted-summary.md` | Shows benchmark, remediation, gate improvement, and retrieval lift with real eval counts. |
| Built-system proof | `heaviside-sales-delivery-automation-redacted-summary.md` | Shows real sales/delivery systems and source-record basis; time-savings claims remain estimate-labeled. |

This materially reduces the risk that the packet reads like a polished strategy doc. It now has role-level economic proof, AI workflow proof, and software-building proof.

## Baseline Comparison

Claude is competent on triage, risk tiering, and cron audit. The v2 packet should beat it because it adds:

- real revenue/FTE and margin proof,
- real sales and delivery automation examples,
- redacted proof artifacts backing the strongest claims,
- a more inspectable artifact,
- a source-labeled evidence log,
- a real self-assessment,
- explicit founder-leverage and revenue/FTE framing tied to the GM posting.
- public-source specificity from Single Grain / Single Brain / ClickFlow / Karrot instead of generic agency-ops recommendations.
- explicit wiring complement: Chris's INTP / `6w5`, strong Type `1`, Kolbe `9-4-3-2` profile as the follow-through/source-checking counterweight to Eric's ENTJ / `8w7`, Quick Start `9`, Follow Thru `2` pattern.

## Remaining Non-Scoring Blockers

1. Applicant should confirm the LinkedIn URL in `tasks/ops-coo-009-candidate-profile-v2.md`.
2. Applicant should approve the self-assessment wording.
3. Applicant should decide whether to attach the HeavisideOS redacted proof summary or summarize it only.
4. Re-run live posting check immediately before actual upload if time passes.

## Verdict

The v2 packet is now materially stronger than Claude's published baseline and aligned with the public scoring guide. It is not merely a better essay; it has an inspectable operating artifact, a proof-tiered evidence log, and real operating metrics.
