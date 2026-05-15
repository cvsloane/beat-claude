# Ops COO 009 - Submission Packet Assembly Map

Status: internal assembly map. Superseded by `tasks/ops-coo-009-application-rethink-2026-05-13.md`. Do not submit this file or assemble the old default-final packet.

Use this as historical context only until the written answer, artifact, and evidence log are rewritten around the new GM application strategy.

## Target Role Facts

Checked on 2026-05-13:

- Role: General Manager (Agency) `[Observed from GM posting]`
- Location/remoteness: Remote / Fully Remote `[Observed from GM posting]`
- Compensation: `$185,000 - $225,000 DOE` `[Observed from GM posting]`
- Required challenge: `ops-coo-009` `[Observed from GM posting]`

Recheck the live posting immediately before final submission.

## Packet Order

### 1. Written Answer

Previous default-final file:

- `tasks/ops-coo-009-final-written-defaults.md`

Current status:

- Superseded by the 2026-05-13 application rethink.
- Mechanically useful as source material.
- Strategically stale because it does not foreground the GM posting's revenue/FTE mandate, Heaviside RPE/profitability proof, or the Eric dossier implications.

Before final:

- Rewrite the main 2-page answer around the new strategy.
- Rerun QA/export and Beat-Claude review after the rewrite.
- Confirm or replace candidate LinkedIn URL and create `candidate-profile.md` with the confirmed URL and approved MMPI summary if needed.
- Produce both `written-answer.pdf` and `written-answer.md`; use the PDF as the preferred written-answer upload and keep the Markdown as source/back-up if the portal allows multiple files.

### 2. Operating Artifact

Candidate file:

- `tasks/ops-coo-009-operating-artifact-final.md`

Use as:

- Standalone Markdown appendix or PDF appendix.

Covers:

- Closed-loop model.
- First 48-hour command queue.
- Eric 30-minute calibration block.
- Score-to-route gate.
- Agent-specific green/yellow/red examples.
- Cron audit framework and sample decisions.
- Mistake handling.
- Memory record schema.
- Operating cadence.
- What stays human.
- What breaks it.
- Evidence hooks.

### 3. Evidence Log

Candidate file:

- `tasks/ops-coo-009-evidence-log-final-defaults.md`

Current status:

- Strong enough as a default-final evidence log.
- Personal operational examples and MMPI are clean in the default-final written answer, but still require applicant approval.
- Final shareability decisions are still needed for optional internal proof.

### 4. Number Source Labels

Candidate QA file:

- `tasks/ops-coo-009-final-qa-precheck-v0.md`

Current status:

- Default-final written answer passed number-label precheck.
- Artifact labels challenge facts as `[Observed from brief]` and proposed operating rules as `[Assumed]`.

Before final:

- Rerun number-label grep after Chris edits. No rerun is needed for unchanged defaults beyond the assembly script QA pass.

### 5. AI Usage Disclosure

Candidate file:

- `tasks/ops-coo-009-ai-disclosure-final.md`

Before final:

- Update if any additional tools are used.
- Remove "working disclosure" status line if uploading directly.

### 6. What Breaks It

Primary location:

- `tasks/ops-coo-009-operating-artifact-final.md`, section 12.

Include either:

- As artifact appendix, or
- A short reference in the written answer: "Failure modes and human boundaries are in the artifact."

### 7. What Stays Human

Primary location:

- `tasks/ops-coo-009-operating-artifact-final.md`, section 11.

Include either:

- As artifact appendix, or
- A short reference in the written answer if the reviewer may not inspect appendices first.

### 8. Redacted Proof Attachment

Primary candidate file:

- `tasks/evidence/heavisideos-slack-eval-redacted-summary.md`

Optional candidate files:

- `tasks/evidence/x-accel-gate-redacted-summary.md`
- `tasks/evidence/sloanevault-memory-redacted-summary.md`
- `tasks/evidence/decision-council-redacted-summary.md`

Use as:

- Optional proof appendix for Part 4 AI workflow and supporting operating primitives.

Current status:

- Safe as a redacted summary if no raw report tables are added.
- Raw reports must not be attached externally without redaction because they contain customer names.

### 9. Required Metadata

Blocked:

- Chris-confirmed LinkedIn profile URL. Candidate public-source value: `https://www.linkedin.com/in/christophersloane/`.
- Chris-confirmed MMPI-style self-assessment.
- Approved default assembly will generate `tasks/final-upload-defaults/candidate-profile.md` so this metadata is explicit in the upload bundle.

Confirmation checklist:

- `tasks/ops-coo-009-chris-confirmation-checklist.md`

Finalization runbook:

- `tasks/ops-coo-009-finalization-runbook.md`

## Do Not Upload

- `tasks/ops-coo-009-beat-claude-review-v*.md`
- `tasks/ops-coo-009-completion-audit.md`
- `tasks/ops-coo-009-completion-plan.md`
- Raw HeavisideOS eval reports under `/home/cvsloane/dev/heaviside-os/tmp/assistant-evals/slack-usefulness/`
- Any SloaneVault/private client/customer screenshots without redaction.

## Final Go/No-Go Gate

Submit only after:

- [ ] Chris approves/edits operational experience.
- [ ] Chris approves/edits MMPI section.
- [ ] LinkedIn URL is confirmed and included, either in the portal field or generated `candidate-profile.md`.
- [ ] Final written answer is either the approved default-final file or a custom edited final with no candidate labels.
- [ ] Approval-gated assembly script passes its live role-fact check.
- [ ] Final number-label grep passes.
- [ ] Sensitive-info scan passes across every attached file.
- [ ] Final PDF/Markdown page-fit check passes.
