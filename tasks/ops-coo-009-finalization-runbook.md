# Ops COO 009 - Finalization Runbook

Draft status: historical execution runbook. Superseded by `tasks/ops-coo-009-application-rethink-2026-05-13.md`.

Do not run this to completion. Rewrite the written answer, artifact, and evidence log around the new strategy first.

## Preconditions

Required before any final assembly:

1. Rewritten 2-page answer that foregrounds the GM posting, Heaviside RPE/profitability proof, and Eric dossier implications.
2. Updated operating artifact and evidence log.
3. Confirmation or replacement of candidate public-source LinkedIn URL: `https://www.linkedin.com/in/christophersloane/`.
4. Shareability decision for optional proof summaries:
   - HeavisideOS eval summary.
   - x-accel gate summary.
   - SloaneVault memory summary.
   - Decision council summary.

Historical input template:

- `tasks/ops-coo-009-user-response-form.md`

## Step 1 - Create Or Select Final Written Answer

Historical source:

- `tasks/ops-coo-009-final-written-v1-candidate.md`
- Superseded default-ready source: `tasks/ops-coo-009-final-written-defaults.md`

Create:

- `tasks/ops-coo-009-final-written.md`

Edits:

1. Remove candidate status line.
2. Replace "Candidate pending confirmation" language.
3. Insert Chris-approved operational-experience language and result line.
4. Insert Chris-approved MMPI language.
5. Add confirmed LinkedIn URL if not handled in application form.
6. Preserve number labels.

## Step 2 - Finalize Attachments

Candidate/final attachments:

- `tasks/ops-coo-009-operating-artifact-final.md`
- `tasks/ops-coo-009-evidence-log-final-defaults.md`
- `tasks/ops-coo-009-ai-disclosure-final.md`
- `tasks/evidence/heavisideos-slack-eval-redacted-summary.md`
- `tasks/final-upload-defaults/candidate-profile.md` generated only after approval
- Optional: `tasks/evidence/x-accel-gate-redacted-summary.md`
- Optional: `tasks/evidence/sloanevault-memory-redacted-summary.md`
- Optional: `tasks/evidence/decision-council-redacted-summary.md`

Final attachment edits:

1. Remove draft/candidate status lines from files that will be submitted. The operating artifact already has a clean final copy.
2. Keep redaction caveats where useful.
3. Remove or keep optional proof summaries based on Chris shareability decision.
4. Do not attach raw HeavisideOS reports.
5. Do not attach raw vault pages or private customer/client screenshots.

## Step 3 - Reconfirm Role Facts

Immediately before submission, recheck:

- `https://careers.singlegrain.com/jobs/567472-general-manager-agency`

Confirm:

- Role remains General Manager (Agency).
- Location/remoteness remains Remote / Fully Remote.
- Compensation remains `$185,000 - $225,000 DOE`.
- Posting still points to `ops-coo-009`.

If any fact changes, update:

- `tasks/ops-coo-009-source-pack-v0.md`
- `tasks/ops-coo-009-evidence-log-final-defaults.md`
- `/home/cvsloane/SloaneVault/20 - Development/21 - Projects/beat-claude.md`

## Step 4 - Final QA Commands

Run from repo root:

```bash
bash tasks/ops-coo-009-qa-check.sh
```

This no-arg command checks the unchanged default-final packet. For a custom edited answer, pass the custom file explicitly:

```bash
bash tasks/ops-coo-009-qa-check.sh \
  tasks/ops-coo-009-final-written.md \
  tasks/ops-coo-009-operating-artifact-final.md \
  tasks/ops-coo-009-evidence-log-final-defaults.md \
  tasks/ops-coo-009-ai-disclosure-final.md
```

Use the helper first, then manually inspect its output. The helper does not replace applicant approval, page-fit, shareability judgment, or a fresh live-posting check.

Export/page-fit check:

```bash
bash tasks/ops-coo-009-export-written-pdf.sh tasks/ops-coo-009-final-written-defaults.md
```

For a custom edited answer:

```bash
bash tasks/ops-coo-009-export-written-pdf.sh tasks/ops-coo-009-final-written.md
```

Expected:

- Written-answer PDF is 2 pages or fewer.

```bash
wc -w tasks/ops-coo-009-final-written-defaults.md
```

Expected:

- Main written answer still fits the 2-page cap by formatting check.

```bash
rg -n "[0-9]" tasks/ops-coo-009-final-written-defaults.md tasks/ops-coo-009-operating-artifact-final.md
```

Check:

- Every substantive number has `[Observed]`, `[Estimated]`, `[Benchmarked]`, or `[Assumed]`.
- Ignore section headings, file names, product names, and list numbering.

```bash
rg -n "Candidate pending|TBD|Requires Chris|Blocked|not submission-ready|Do not submit" \
  tasks/ops-coo-009-final-written-defaults.md \
  tasks/ops-coo-009-operating-artifact-final.md \
  tasks/ops-coo-009-evidence-log-final-defaults.md \
  tasks/ops-coo-009-ai-disclosure-final.md
```

Expected:

- No final-submission files contain unresolved candidate/blocker language.

```bash
rg -n "secret|token|password|Bearer|Authorization|raw report|customer names|Slack message text|private client" \
  tasks/ops-coo-009-final-written-defaults.md \
  tasks/ops-coo-009-operating-artifact-final.md \
  tasks/ops-coo-009-evidence-log-final-defaults.md \
  tasks/evidence/*.md \
  tasks/ops-coo-009-ai-disclosure-final.md
```

Check:

- Warnings about raw reports and customer names are acceptable in internal/redacted evidence summaries.
- No actual secrets, raw customer names, emails, phone numbers, or private message text should appear in submitted files.

## Step 5 - Final Beat-Claude Check

If Chris edits materially change operational-experience or MMPI sections, update:

- `tasks/ops-coo-009-beat-claude-review-v1-candidate.md`

Minimum final standard:

- Stronger than Claude on artifact.
- Stronger than Claude on evidence.
- Stronger than Claude on AI workflow proof.
- Stronger than Claude on personal sections after Chris confirmation.
- No unsupported role, compensation, remoteness, or maturity claims.

## Step 6 - Final Packet

If Chris approves defaults, assemble the upload directory with:

```bash
bash tasks/ops-coo-009-assemble-approved-defaults.sh --approved-defaults
```

The script refuses to run without the approval flag and performs the live GM posting check before it creates the bundle.

Use only one script mode at a time. Mixed mode calls such as `--approved-defaults --preflight` fail intentionally.

To run the live role check without assembling the bundle:

```bash
bash tasks/ops-coo-009-assemble-approved-defaults.sh --check-role-only
```

To preflight the default path without assembling the bundle:

```bash
bash tasks/ops-coo-009-assemble-approved-defaults.sh --preflight
```

Preflight creates a full temporary upload set, including the approved-form evidence log, candidate profile addendum, manifest, live role check, and written-answer PDF. It verifies the directory has exactly the expected nine non-empty files, runs the normal QA helper, then scans the whole temporary upload directory for unresolved candidate/blocker language, local filesystem paths, and sensitive-info warnings.

To inspect the current readiness state without network checks or file creation, while verifying ready source files exist, are non-empty, the current compact PDF still fits the 2-page cap, and the approval response paths are visible:

```bash
bash tasks/ops-coo-009-assemble-approved-defaults.sh --status
```

Recommended final upload order:

1. Written answer PDF: `tasks/final-upload-defaults/written-answer.pdf`.
2. Written answer Markdown source: `tasks/final-upload-defaults/written-answer.md`.
3. Operating artifact: `tasks/final-upload-defaults/operating-artifact.md`.
4. Evidence log: `tasks/final-upload-defaults/evidence-log.md`.
5. AI disclosure: `tasks/final-upload-defaults/ai-usage-disclosure.md`.
6. Redacted proof summary: `tasks/final-upload-defaults/heavisideos-slack-eval-redacted-summary.md`.
7. Candidate profile addendum: `tasks/final-upload-defaults/candidate-profile.md`.
8. Live role check: `tasks/final-upload-defaults/live-role-check.md`.
9. LinkedIn URL in the application form or cover field if the portal has a separate field: `https://www.linkedin.com/in/christophersloane/` after Chris confirms it.

For a custom edited packet, create an equivalent final upload directory and rerun the same QA/export checks against the custom written answer.

## No-Go Conditions

Do not submit if any are true:

- Chris has not approved the operational-experience section.
- Chris has not approved the MMPI section.
- LinkedIn URL is missing or only present as an unconfirmed candidate value.
- Candidate/blocker language remains in submitted files.
- Raw internal customer/client data is exposed.
- Live GM posting compensation/remoteness cannot be reconfirmed.
- Final written answer does not fit the brief's 2-page written-answer cap.
