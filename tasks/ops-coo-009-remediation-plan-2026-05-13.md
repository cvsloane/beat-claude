# Ops COO 009 - Remediation Plan

Status: completed after first council remediation and second council review.

## Goal

Tighten the final packet so it keeps the current strong thesis while reducing reviewer confusion, adding bounded cron-fleet proof, and making the proof package easier to score against `SCORING.md`, `ops-coo-009/scoring_rubric.md`, and the Claude baseline.

## Council Findings To Address

| Finding | Remediation |
|---|---|
| Do not overhaul the answer. | Keep the core written answer, triage order, risk gate, cron audit, and proof stack intact. |
| Proof stack may feel overpacked. | Add `attachment-map.md` and keep every proof file tied to one explicit scoring purpose. |
| Operational-experience story is compressed. | Add a sharper operating-experience paragraph in the written answer. |
| Cron-fleet operating proof was missing. | Add Hermes/open-agents scheduler-fleet proof to the written answer, evidence log, proof plan, and attachment map. |
| RPE proof is strong but below Single Grain's target. | Preserve the existing caveat: proof of metric fluency and trajectory, not equivalence to the `300K-400K` target. |
| HeavisideOS/x-accel/SloaneVault can sound like one overclaimed system. | Keep the maturity boundaries explicit and avoid making HeavisideOS central. |
| Redacted proof may cause credibility anxiety. | Keep proof summaries readable, caveated, and source-tiered; avoid raw confidential exports. |

## Execution Checklist

1. Completed: add remediation plan document.
2. Completed: add / refine attachment map.
3. Completed: add Hermes scheduler-fleet summary.
4. Completed: add Hermes scheduler-fleet row to evidence log.
5. Completed: add Hermes proof hook to operating artifact.
6. Completed: add bounded Hermes proof and sharper operating-experience wording to written answer.
7. Completed: update AI usage disclosure for council / Hermes review.
8. Completed: re-export written-answer PDF and verify page count.
9. Completed: run QA / scans.
10. Completed: run second council against remediated packet.
11. Completed: document second council and update the master index.

Second council result: `tasks/ops-coo-009-second-council-review-2026-05-13.md`.

Final packaging rule: do not rewrite the answer; use a strict required/core/appendix/backup upload hierarchy so the packet reads as GM operating proof, not an internal-tools catalog.

## Success Criteria

- Written answer remains within `2` pages.
- Packet still reads as a GM/operator answer, not an internal-tools catalog.
- Hermes proof is included but caveated as Tier 3 internal scheduler evidence.
- No local filesystem paths appear in external-facing final-upload files.
- No raw secrets, client data, or unredacted scheduler metadata are introduced.
- Second council finds only minor final-upload issues or approval decisions.
