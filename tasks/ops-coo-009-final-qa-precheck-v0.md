# Ops COO 009 - Final QA Precheck v0

Draft status: pre-submission QA on candidate packet. This does not replace final QA after Chris edits.

Checked date: 2026-05-13.

## Files Checked

- `tasks/ops-coo-009-final-written-defaults.md`
- `tasks/ops-coo-009-operating-artifact-final.md`
- `tasks/ops-coo-009-evidence-log-final-defaults.md`
- `tasks/evidence/heavisideos-slack-eval-redacted-summary.md`
- `tasks/ops-coo-009-ai-disclosure-final.md`

## Word Count

| File | Word count | Read |
|---|---:|---|
| `tasks/ops-coo-009-final-written-defaults.md` | 1,024 | Compact export fits 2 pages. |
| `tasks/ops-coo-009-ai-disclosure-final.md` | 444 | Attach as separate disclosure or appendix, not inside the 2-page main answer unless required. |

## Page-Fit Export Check

Command:

```bash
bash tasks/ops-coo-009-export-written-pdf.sh tasks/ops-coo-009-final-written-defaults.md
```

Output:

- `tasks/exports/ops-coo-009-final-written-defaults-compact.pdf`
- `Pages: 2`
- `Page size: 612 x 792 pts (letter)`

This satisfies the written-answer 2-page cap for the default-final answer. Rerun after any user edits.

## Live Role Fact Check

Result: candidate pass on 2026-05-13.

The live GM posting still shows:

- Role: General Manager (Agency).
- Department/location/remoteness: Admin, Remote, Fully Remote.
- Compensation: `$185,000 - $225,000 DOE`.
- Required challenge: COO Operations Challenge, linked to `ops-coo-009`.

Required before actual upload: recheck the posting again if there is any delay, because job pages can change.

## Number Label Check

Result: pass for candidate state, with caveat.

Substantive numbers in the final written answer are labeled as `[Observed from brief]`, `[Observed internal eval]`, or `[Assumed]`. Remaining unlabeled digits are section titles, product names, file/version names, or table/list structure.

Artifact check:

- Challenge facts are labeled `[Observed from brief]`.
- Proposed thresholds, cadences, SLAs, score cutoffs, and agenda splits are labeled `[Assumed]`.
- Eric's 30-minute block is sourced to the brief; internal minute split is explicitly labeled `[Assumed]`.

Required before submission: rerun this check after any Chris edits.

## Sensitive-Info Check

Result: pass for current candidate packet, with caveat.

The candidate written answer and operating artifact do not include raw customer names, emails, phone numbers, tokens, secrets, or raw Slack/client text.

The redacted HeavisideOS eval summary intentionally mentions:

- aggregate customer/tenant counts,
- raw report paths,
- and a warning that raw reports contain customer names.

This is acceptable as an internal evidence summary, but raw report files must not be attached externally without redaction.

Required before submission:

- Do not attach raw files under `/home/cvsloane/dev/heaviside-os/tmp/assistant-evals/slack-usefulness/`.
- Re-scan any screenshots, PDFs, exports, or Looms for customer names and private data.

## Beat-Claude Check

Current review:

- `tasks/ops-coo-009-beat-claude-review-v1-candidate.md`

Read: v1 should beat Claude structurally after Chris confirms personal sections and final QA passes.

## Remaining Blockers

- Chris confirmation/edit of operational experience section.
- Chris confirmation/edit of MMPI-style self-assessment.
- Confirm or replace candidate public-source LinkedIn URL: `https://www.linkedin.com/in/christophersloane/`.
- Final shareability decision for optional proof artifacts.
- Approval-gated assembly script live GM posting check.
- Final export/page-fit check if user edits the defaults.

## QA Helper Check

Helper:

- `tasks/ops-coo-009-qa-check.sh`
- Default artifact path now points to `tasks/ops-coo-009-operating-artifact-final.md`.
- Default evidence log path points to `tasks/ops-coo-009-evidence-log-final-defaults.md`.
- Default AI disclosure path points to `tasks/ops-coo-009-ai-disclosure-final.md`.

Test run on candidate files:

```bash
bash tasks/ops-coo-009-qa-check.sh \
  tasks/ops-coo-009-final-written-defaults.md \
  tasks/ops-coo-009-operating-artifact-final.md \
  tasks/ops-coo-009-evidence-log-final-defaults.md \
  tasks/ops-coo-009-ai-disclosure-final.md
```

Result: pass on default-final files, with redaction warnings.

Observed warnings:

- Optional evidence summaries and the evidence log intentionally mention raw reports, customer names, secrets, private client data, and redaction caveats.
- These warnings are acceptable only as redaction warnings; actual raw reports and private records must not be attached.

Do not treat the helper pass as submission approval. The default-final written answer still requires applicant approval or edits and final shareability choices. The approval-gated assembly script performs the live GM posting check. Rerun page-fit/export QA if the written answer changes.
