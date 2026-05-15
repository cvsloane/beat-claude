# Ops COO 009 - Proof Artifact Plan

Status: current proof-package recommendation.

## Recommended Upload Set

Use a small proof set. The reviewer should see the strongest evidence without having to sort through internal sprawl.

Second-council packaging rule: freeze the prose except typo/sensitivity fixes, and define a strict upload hierarchy before submitting. The first reader should see role proof first, automation proof second, and bounded internal-tool proof only as appendix/support.

### Lean Upload Path

| Tier | Artifact | Rule |
|---|---|---|
| Required answer | Main written answer, AI disclosure, candidate profile | Submit wherever requested by the application or challenge instructions. |
| Core proof | Operating artifact, evidence log, attachment map, RPE/profitability summary, sales/delivery automation summary | Include if the portal allows supporting files or if creating a merged appendix. |
| Appendix only | HeavisideOS Slack eval summary, Hermes scheduler-fleet summary | Include only if the appendix remains clean and easy to scan. |
| Backup | x-accel, decision councils, SloaneVault memory, raw exports/screenshots | Hold for interview, follow-up, or live walkthrough. |

| Priority | Artifact | File | Why include |
|---:|---|---|---|
| 1 | Main written answer | `tasks/final-upload-v2/written-answer.pdf` | Required response; fits `2` pages. |
| 2 | Operating artifact | `tasks/final-upload-v2/operating-artifact.md` | Required artifact; shows queue, gate, CEO contract, cron audit, dashboard, memory schema, failure modes. |
| 3 | Evidence log | `tasks/final-upload-v2/evidence-log.md` | Required by `SCORING.md`; maps claims to proof tiers and source labels. |
| 4 | Attachment map | `tasks/final-upload-v2/attachment-map.md` | Plain-language reviewer guide if files are uploaded separately or merged into one appendix. |
| 5 | Heaviside RPE / profitability summary | `tasks/final-upload-v2/heaviside-rpe-profitability-redacted-summary.md` | Strongest GM-role proof: revenue/FTE and margin improved together. |
| 6 | Sales/delivery automation summary | `tasks/final-upload-v2/heaviside-sales-delivery-automation-redacted-summary.md` | Supports HG Market Report and HG SEO Commander claims without exposing raw customer/admin data. |
| 7 | Candidate profile addendum | `tasks/final-upload-v2/candidate-profile.md` | Includes LinkedIn and MMPI-style self-assessment; directly addresses Eric operating-profile clue. |
| 8 | AI usage disclosure | `tasks/final-upload-v2/ai-usage-disclosure.md` | Required disclosure. |
| 9 | HeavisideOS Slack eval summary | `tasks/final-upload-v2/heavisideos-slack-eval-redacted-summary.md` | Appendix-only measured AI workflow proof: before/after eval, gates, retrieval improvement. |
| 10 | Hermes scheduler-fleet summary | `tasks/final-upload-v2/hermes-cron-fleet-redacted-summary.md` | Appendix-only bounded cron-fleet operating proof: `88` scheduled jobs with enabled/paused/error visibility. |

## Hold As Backup Unless Requested

| Artifact | Reason to hold back |
|---|---|
| x-accel gate/scoring summary | Good support for the green/yellow/red gate, but less directly tied to the GM role than RPE/profitability and HeavisideOS eval. Use in a walkthrough or follow-up. |
| Decision Council summary | Useful for yellow-tier ambiguity, but attaching it may make the packet feel over-complex. Keep as backup. |
| SloaneVault memory summary | Useful proof of durable memory, but the packet already references SloaneVault. Keep as backup unless they ask about company brain/memory implementation. |
| Raw QuickBooks/P&L exports | Too sensitive. Use redacted summary only. |
| Raw client reports, screenshots, Slack messages, CRM records, customer names | Too sensitive. Use redacted summaries or live walkthrough only. |
| Raw repo READMEs | Risk of leaking env patterns, architecture details, or irrelevant implementation noise. Use summaries instead. |

## Current Proof Quality Read

| Claim family | Current tier | What would make it stronger |
|---|---:|---|
| Heaviside RPE/profitability | Tier 4 | Redacted screenshot/export from Agency Financials or accountant/QuickBooks independent verification. |
| HeavisideOS Slack eval | Tier 4 | Redacted raw eval report excerpt or Loom walkthrough of the eval runner/results. |
| HG Market Report automation | Tier 2-3 for source records; Tier 0-2 for time savings | Redacted demo report plus before/after timestamp or operator time log. |
| HG SEO Commander automation | Tier 2-3 for source records; Tier 0-2 for time savings | Redacted walkthrough of delivery queue/output plus operator time log. |
| Hermes/open-agents scheduler fleet | Tier 3 | Redacted live-state screenshot or export, plus a later audit showing accepted-work or kill/pause decisions from the fleet. |
| x-accel gate/scoring | Tier 3 | Safe code excerpt plus before/after content-performance learning loop. |
| Decision councils | Tier 2-3 | Redacted council output with input, advisor review, final decision, and outcome. |
| SloaneVault memory | Tier 3 | qmd status snapshot plus sanitized example of a decision/source note improving a later action. |

## Approval Decision

Recommended: attach the required packet plus the RPE/profitability and sales/delivery automation summaries first. Add HeavisideOS and Hermes only if the portal allows a clean appendix or merged proof packet that does not feel like an internal-tools catalog. If the upload surface is cramped, hold HeavisideOS and Hermes as walkthrough evidence because the evidence log already captures the claims.

This keeps the packet focused on:

1. Can this candidate think and triage better than Claude?
2. Has this candidate moved the actual GM economic metric?
3. Has this candidate built measured AI/workflow systems?
4. Does this candidate understand Eric's operating gap and how to close loops?
