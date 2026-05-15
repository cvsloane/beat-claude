# Ops COO 009 - Approval Brief

Status: superseded by `tasks/ops-coo-009-application-rethink-2026-05-13.md`. Do not submit this brief.

## What Was Ready Before The Strategy Rewrite

- Superseded default-final written answer: `tasks/ops-coo-009-final-written-defaults.md`
- Compact written-answer PDF: `tasks/exports/ops-coo-009-final-written-defaults-compact.pdf`
- Operating artifact: `tasks/ops-coo-009-operating-artifact-final.md`
- Evidence log: `tasks/ops-coo-009-evidence-log-final-defaults.md`
- AI usage disclosure: `tasks/ops-coo-009-ai-disclosure-final.md`
- Primary redacted proof summary: `tasks/evidence/heavisideos-slack-eval-redacted-summary.md`
- Candidate profile addendum: generated as `candidate-profile.md` during approved final assembly
- Source pack: `tasks/ops-coo-009-source-pack-v0.md`
- Eric/X authenticated refresh: `tasks/ops-coo-009-eric-x-refresh-2026-05-13.md`

## Approval Status

The old `approve defaults` path is withdrawn. The whole packet needs to be rewritten around the GM posting, Heaviside RPE/profitability proof, and Eric dossier implications before final assembly.

Before final assembly, collect answers from:

- `tasks/ops-coo-009-user-input-needed.md`

Then rewrite:

1. The main 2-page written answer.
2. The operating artifact title/front matter and evidence hooks.
3. The evidence-log rows for RPE/profitability, HG Market Report, HG SEO Commander, HeavisideOS, x-accel, SloaneVault, and decision councils.

Still needed for final approval:

1. Confirm LinkedIn URL: `https://www.linkedin.com/in/christophersloane/`.
2. Approve default shareability:
   - Attach the HeavisideOS Slack eval redacted summary.
   - Do not attach raw HeavisideOS reports.
   - Summarize x-accel, SloaneVault, and decision-council proof in the evidence log only.
3. Approve Markdown/PDF final bundle assembly through the guarded script after the personal sections are rewritten.

## Default Personal Sections

Withdrawn operational-experience draft:

> My operating pattern is turning ambiguous work into gates. In the M365 -> Google Workspace migration, work spanned mail, calendar, DNS, aliases, OneDrive/SharePoint, Missive, GHL, phone routing, Windows identity, and Microsoft cleanup. I installed one control center with lane state, accepted/gated status, rollback rules, and a hard rule that cleanup could not run until dependency gates passed. In PVM/GDM paid media, I used the same rule: direct GHL attribution and direct platform reads outranked stale dashboard numbers, so budgets and cuts followed source truth rather than convenient reporting. This prevented cleanup from outrunning dependency proof and kept budget/scaling decisions tied to source-truth performance data instead of stale dashboards.

Withdrawn MMPI-style self-assessment draft:

> I am high-drive, systems-first, and comfortable with ambiguity. The strength is that I turn messy work into gates, owners, source records, and repeatable loops. The risk is overbuilding or pushing process faster than a team can adopt it. I compensate with lightweight routing: green executes, yellow gets owner/council review, red goes to the CEO.

## Verified Current Facts

- GM posting live check passes as of 2026-05-13:
  - Role: General Manager (Agency).
  - Remote / Fully Remote.
  - Compensation: `$185,000 - $225,000 DOE`.
  - Required challenge: `ops-coo-009`.
- Authenticated x-accel Eric/X refresh is current through 2026-05-13 17:52 UTC.
- Written answer remains 1,024 words.
- Compact PDF export is 2 pages.
- QA helper passes on the default-final packet with redaction warnings only.
- Assembly preflight passes without creating the upload directory, including a full temporary upload set, approved `candidate-profile.md`, manifest, live role check, exact nine-file/non-empty check, and upload-directory packaging scan.
- Assembly script refuses to run without explicit `--approved-defaults`.
- Assembly script refuses mixed modes such as `--approved-defaults --preflight`.
- Assembly status can be inspected without network checks or file creation; it verifies ready source files exist and are non-empty, checks the written-answer word count and compact PDF page count, and prints both approval response paths:
  `bash tasks/ops-coo-009-assemble-approved-defaults.sh --status`.

## After Interview And Approval

After the personal sections are rewritten and approved, run:

```bash
bash tasks/ops-coo-009-assemble-approved-defaults.sh --approved-defaults
```

The script will:

1. Recheck the live GM posting.
2. Export the written-answer PDF.
3. Run QA.
4. Generate `candidate-profile.md`.
5. Assemble `tasks/final-upload-defaults/`.

## Next Step

Work through the questionnaire in `tasks/ops-coo-009-user-input-needed.md`, starting with Part A.
