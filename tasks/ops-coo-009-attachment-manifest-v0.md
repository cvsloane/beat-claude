# Ops COO 009 - Attachment Manifest v0

Draft status: packaging plan. Superseded by the 2026-05-13 application rethink. Do not submit files marked blocked, and do not use the old default-final answer without rewriting it.

## Submission Core

| Item | Candidate file | Status | Notes |
|---|---|---|---|
| Main written answer | `tasks/ops-coo-009-final-written-defaults.md` | Superseded | Rewrite around `tasks/ops-coo-009-application-rethink-2026-05-13.md` before using. |
| Operating artifact | `tasks/ops-coo-009-operating-artifact-final.md` | Final-ready | Use as diagram/table appendix or standalone Markdown attachment. |
| Evidence log | `tasks/ops-coo-009-evidence-log-final-defaults.md` | Needs update | Add RPE/profitability, HG Market Report, HG SEO Commander, and updated system-maturity claims. |
| Number source labels | Inside written answer + artifact | Partial | Final assembled packet needs one more label audit. |
| AI usage disclosure | `tasks/ops-coo-009-ai-disclosure-final.md` | Final-ready | Recheck only if additional tools are used before submission. |
| What breaks it | Operating artifact section | Candidate | Include in written answer or artifact appendix. |
| What stays human | Operating artifact section | Candidate | Include in written answer or artifact appendix. |
| LinkedIn profile URL | `https://www.linkedin.com/in/christophersloane/` | Candidate, blocked from final submission | Found via public `https://www.csloane.com/about` footer link; requires Chris confirmation or replacement. |
| MMPI self-assessment | `tasks/ops-coo-009-mmpi-style-self-assessment-candidate.md` | Candidate, blocked from final submission | Requires Chris review/edit/approval. |

## Optional Evidence Attachments

| Item | Candidate file/path | Status | Use |
|---|---|---|---|
| HeavisideOS Slack eval summary | `tasks/evidence/heavisideos-slack-eval-redacted-summary.md` | Candidate | Strongest Part 4 proof because it shows before/after eval metrics and gate discipline. |
| Heaviside RPE/profitability proof | `tasks/ops-coo-009-heaviside-rpe-calculation.md` and `[[Beat Claude - Heaviside RPE and Profitability History]]` | Needs redaction/summary | Top role-fit proof; use summarized numbers, not raw confidential exports. |
| x-accel gate proof | `tasks/evidence/x-accel-gate-redacted-summary.md` | Candidate | Source-record summary exists; specific input/output example still optional. |
| SloaneVault memory proof | `tasks/evidence/sloanevault-memory-redacted-summary.md` | Candidate | Aggregate qmd/vault summary exists; raw vault pages should not be attached. |
| Decision council proof | `tasks/evidence/decision-council-redacted-summary.md` | Candidate | Workflow summary exists; private council artifacts still require redaction. |
| Operational experience proof | `tasks/ops-coo-009-operational-experience-options.md` | Partial | Choose one primary story after Chris confirms details. |
| Operational experience inserts | `tasks/ops-coo-009-operational-experience-inserts-v0.md` | Candidate | Source-backed draft copy exists; needs Chris confirmation. |
| Source pack | `tasks/ops-coo-009-source-pack-v0.md` | Candidate | Internal assembly aid; attach only if useful. |
| Submission packet candidate | `tasks/ops-coo-009-submission-packet-candidate.md` | Internal assembly aid | Use as final upload map; do not attach unless useful. |
| Beat-Claude review | `tasks/ops-coo-009-beat-claude-review-v1-candidate.md` | Internal only | Current comparison against Claude baseline; not part of submission. |
| Completion audit | `tasks/ops-coo-009-completion-audit.md` | Internal only | Useful for tracking; not part of submission. |
| Chris confirmation checklist | `tasks/ops-coo-009-chris-confirmation-checklist.md` | Internal only | Use to collect final personal confirmations before submission. |

## Do Not Attach Without Redaction

- Raw HeavisideOS eval reports under `/home/cvsloane/dev/heaviside-os/tmp/assistant-evals/slack-usefulness/`.
- Any customer names, Slack message text, private client communications, sales pipeline details, raw CRM records, or ad/SEO account exports.
- Secrets, tokens, `.env` files, internal API URLs with credentials, or Bitwarden references.
- Private SloaneVault notes that include client names, finances, health/personality notes, legal details, or unrelated personal content.

## Final Packet Order

1. `Written Answer` - compressed main response, max 2 pages per brief.
2. `Operating Artifact` - queue/risk/cron/memory/cadence artifact.
3. `Evidence Log` - proof tiers and claim support.
4. `AI Usage Disclosure` - tools, role of AI, human decisions, checks.
5. `Optional Redacted Proof` - HeavisideOS Slack eval summary and any sanitized x-accel/SloaneVault/council artifacts.
6. `LinkedIn + MMPI` - required by brief; LinkedIn candidate still needs confirmation.

## Final QA Checklist

- GM compensation/remoteness rechecked before final submission.
- All numbers in final written answer and artifact are labeled `[Observed]`, `[Estimated]`, `[Benchmarked]`, or `[Assumed]`.
- At least 2 crons are killed or paused.
- Eric's review load is reduced to 3-5 real decisions/day `[Observed from brief]`.
- Artifact is inspectable without verbal explanation.
- AI workflow example includes before/after metrics and caveats.
- HeavisideOS is not overstated.
- x-accel is not described as part of HeavisideOS.
- What stays human and what breaks it are visible.
- No sensitive customer/company material leaks.
