# Ops COO 009 - Completion Plan

Draft status: execution plan for finishing the submission. Not final submission copy.

Source basis:

- Challenge brief, rubric, public `SCORING.md`, and Claude baseline in this repo.
- Single Grain GM posting and official Single Grain AI pages checked on 2026-05-13.
- Eric Siu public/X synthesis from SloaneVault: `Expert - Eric Siu and AI-Native Agency Model`, originally based on an x-accel pull of `@ericosiu` on 2026-05-11, then refreshed with authenticated x-accel on 2026-05-13 via `tasks/ops-coo-009-eric-x-refresh-2026-05-13.md`. Treat the refresh as current through 2026-05-13 17:52 UTC, not as a guarantee of later posts.

## Winning Thesis

Single Grain does not need more AI output. It needs a managed operating loop that turns AI output into accepted work, owner action, source-linked memory, and compounding improvement.

The submission should make the GM role look like the person who installs this loop:

```text
Agent output
-> source check
-> score-to-route gate
-> green/yellow/red action path
-> owner execution
-> outcome log
-> memory/rule update
-> next run improves
```

This directly matches the brief and Eric's public themes: services-as-software, closed loops, company brain / Single Brain, reliable agents over flashy agents, Slack/data-connected workflows, and measuring AI by accepted work, speed-to-ship, revenue influenced, churn prevented, and margin improvement.

## Non-Negotiables

- Keep x-accel separate from HeavisideOS.
- Represent HeavisideOS honestly: current practical use is SlackBot summaries/query flows around recent client communications and paid ads/SEO/business-performance context; broader company brain is direction, not fully mature operating reality.
- Use SloaneVault as the durable memory proof.
- Use decision councils as a yellow-tier judgment mechanism, not as theater for every queue item.
- Every number in final copy must be labeled `[Observed]`, `[Estimated]`, `[Benchmarked]`, or `[Assumed]`.
- The final written answer must fit the `ops-coo-009` page cap. Source drafts can be long; final copy cannot.
- The artifact must be inspectable and operational, not decorative.

## Eric/X Themes To Bake Into The Submission

| Public theme | What it means for our answer | Where it should show up |
|---|---|---|
| Closed loops beat open-loop services. | Do not describe dashboards as the work. Every output needs owner, action, outcome, and memory update. | Thesis, artifact, Part 1, Part 3, failure modes. |
| Services-as-software replaces labor-arbitrage agency work. | Frame the GM as building a managed operating loop, not adding project managers. | Opening thesis and 2028 GM answer. |
| Company brain / Single Brain matters. | Position SloaneVault + HeavisideOS direction as proof of memory and context architecture, with honest maturity limits. | Part 4 and evidence log. |
| Reliable agents beat flashy agents. | Emphasize source checks, routing gates, kill criteria, audit logs, and failure handling. | Part 2 and Part 3. |
| Slack/data-connected workflows are operationally useful. | Use HeavisideOS SlackBot summaries as a grounded example of meeting people in the workflow. | Part 4 AI workflow example. |
| Agent-led project volume creates communication bottlenecks. | The command queue should show what matters, who owns it, and what can execute without CEO review. | Part 1, artifact status model, cadence. |
| Beat AI/Beat Claude is a proof-of-work filter. | The packet must look like real operator work, with an artifact, evidence log, source labels, redaction discipline, and final polish. | Whole packet. |
| Model/tool spend needs hierarchy and governance. | Add cost/tool-spend discipline to failure modes and operating cadence without making it the main thesis. | Artifact failure modes, monthly review. |
| Measure accepted work, speed-to-ship, revenue influenced, churn prevented, margin. | Define metrics around outcomes, not message volume or agent activity. | Artifact cadence, cron audit, evidence log. |
| Overbuilt agents fail; scoped agents win. | Keep routing and cron audit simple. Kill/trim noisy crons. Do not propose a giant rebuild. | Part 3 and what breaks it. |
| Every marketer/operator must become a builder. | Show personal fluency through x-accel, councils, SloaneVault, and HeavisideOS, not generic "I use ChatGPT." | Part 4 operating edge. |

## Step-by-Step Completion Plan

### 1. Lock The Source Pack

Goal: make sure we can defend every external and internal claim.

Actions:

- Reconfirm the brief, rubric, `SCORING.md`, Claude baseline, and GM posting facts.
- Use the captured Eric/X synthesis and 2026-05-13 authenticated x-accel refresh as the source for public commentary, with exact capture windows.
- Keep official Single Grain pages as higher-confidence sources for current role and product positioning.

Deliverable:

- A short `Source Pack` section in the project note or evidence log.

Acceptance criteria:

- GM compensation/remoteness is sourced only to the live GM posting.
- X commentary is labeled as captured corpus refreshed through 2026-05-13 17:52 UTC, not live current truth after that timestamp.
- No unverified compensation, job mapping, or product claim appears in final copy.

### 2. Finalize The Operating Artifact First

Goal: make the artifact the backbone of the answer.

Actions:

- Keep `tasks/ops-coo-009-operating-artifact-v0.md` as the source artifact.
- Tighten it into one inspectable artifact: command queue, score-to-route gate, cron audit, memory schema, cadence, human boundary, failure modes.
- Decide whether to attach it as Markdown, convert it to a spreadsheet, or include it as a diagram/table appendix.

Deliverable:

- Final operating artifact.

Acceptance criteria:

- It covers all required packet items: operating artifact, failure modes, what stays human, and number labels.
- It kills at least two crons.
- It is implementable Monday morning by the team described in the brief.
- It avoids generic strategy language.

### 3. Compress Part 1: First 48 Hours

Goal: turn the current source draft into sharp submission copy.

Current source:

- `tasks/ops-coo-009-written-part1-v0.md`

Actions:

- Compress the hour-by-hour table into the minimum space needed.
- Keep the priority order: ClickFlow churn, stale prospects, queue routing, Oracle source check.
- Keep Eric's 30-minute ask focused on decision rights and red-line calibration.
- Avoid "meet everyone first" language.

Deliverable:

- Final Part 1 copy.

Acceptance criteria:

- It directly answers all four Part 1 questions.
- It shows pattern recognition under fire.
- It makes Eric less busy by hour 48, not more busy.

### 4. Draft Part 2: Risk Tiering

Goal: show the score-to-route system that reduces Eric to 3-5 decisions/day.

Actions:

- Adapt x-accel's gate/scoring logic into Single Grain's context.
- Separate value score from risk flags.
- Give green/yellow/red examples for Oracle, Flash, Cyborg, and Alfred.
- Include mistake handling and rollback.
- Explain where decision councils fit: yellow-tier, high-value ambiguity only.

Deliverable:

- Written Part 2 draft and updated artifact section if needed.

Acceptance criteria:

- Concrete decision tree/criteria, not just concepts.
- Eric gets only red decisions.
- Auto-execution is limited to reversible, source-verified, known-pattern items.

### 5. Draft Part 3: Elon Algorithm Cron Audit

Goal: beat Claude by making the cron audit a real operating judgment exercise.

Actions:

- Score the eight sample crons by action rate, revenue proximity, review burden, source quality, owner clarity, false-positive cost, false-negative cost, and memory feedback.
- Keep/improve/kill decisions from the artifact unless a review finds a better call.
- Kill or pause at least Competitor Pricing Monitor and Candidate Outreach Follow-up.
- Improve GSC Quick Win Scan, LinkedIn Prospect Sourcer, and Churn Signal Detector.
- Keep Deal Revival and Content/Calendar workflows where action rate and outcome proximity justify them.

Deliverable:

- Written Part 3 draft plus artifact table.

Acceptance criteria:

- At least two kills.
- Reasoning is tied to outcomes, not novelty.
- The audit reduces review debt.

### 6. Build Part 4 Around Real Proof

Goal: make the "human advantage" section stronger than Claude.

Actions:

- Choose one primary AI workflow example:
  - strongest likely candidate: HeavisideOS Slack assistant usefulness eval, if we can attach before/after metrics and source records;
  - alternate/supporting proof: x-accel gated content scoring and performance feedback loop.
- Use decision councils and SloaneVault as supporting primitives, not the main workflow unless the proof is cleaner.
- Write the Oracle SEO evaluation answer as an operator check: source verification, page fit, intent, upside, effort, and outcome tracking.
- Write the 2028 GM answer around managing closed loops, memory, exceptions, and human judgment.
- Add operational experience examples from actual Heaviside/PVM/GDM history, not generic ops language.

Deliverable:

- Written Part 4 source draft.

Acceptance criteria:

- Includes one real before/after or source-record-backed workflow.
- Does not claim HeavisideOS is more mature than it is.
- Avoids "I use ChatGPT for SOPs" energy.

### 7. Produce The Evidence Log

Goal: make claims defensible under the public scoring guide.

Actions:

- List every major claim.
- Assign proof tier 0-5.
- Attach candidate evidence path or source.
- Demote or remove any claim that cannot be supported.

Likely proof map:

- x-accel scoring/gate: Tier 3 source/code; Tier 4 if paired with performance snapshot.
- SloaneVault/qmd memory: Tier 3 source records/index/project notes.
- HeavisideOS Slack assistant eval: Tier 4 if reports/logs are attached.
- Decision councils: Tier 2-3 artifacts/source notes.
- GM role facts: observed from live posting.

Deliverable:

- Evidence log table.

Acceptance criteria:

- No central claim is Tier 0 unless it is clearly framed as opinion or planned operating design.
- All internal proof is safe to share or anonymized.

### 8. Run MMPI-Style Self-Assessment

Goal: complete the required self-awareness section without letting it sprawl.

Actions:

- Run a separate LLM-assisted MMPI-style assessment.
- Summarize only the useful operating implications.
- Tie traits to the role: founder buffer, high-velocity CEO, follow-through discipline, conflict handling, systems enforcement.

Deliverable:

- Short MMPI summary for final packet.

Acceptance criteria:

- Transparent, specific, non-performative.
- Includes strengths, risks, and compensating mechanisms.

### 9. Draft AI Usage Disclosure

Goal: disclose AI use without weakening the submission.

Actions:

- Name tools used: Codex/ChatGPT/Claude if used, qmd/SloaneVault search, x-accel source capture, web research.
- State what AI helped with: source organization, outline, critique, drafting.
- State what Chris decided: priority order, proof choices, operating model, final edits.
- State what was checked manually: brief, rubric, job posting, artifact labels, proof paths.

Deliverable:

- AI usage disclosure.

Acceptance criteria:

- Honest and concise.
- Makes clear that final judgment and factual checks were human-directed.

### 10. Assemble The Two-Page Written Answer

Goal: convert source drafts into final submission copy.

Actions:

- Write one tight opening thesis.
- Include Parts 1-4 in compressed form.
- Push tables/decision trees into artifact/appendix where allowed.
- Preserve source labels for numbers.
- Cut anything that could apply to any company.

Deliverable:

- Final written answer in Markdown.

Acceptance criteria:

- Fits the page cap.
- Reads like a GM/operator, not a strategy consultant or generic model.
- References artifact/evidence log instead of repeating everything.

### 11. Beat-Claude Review

Goal: make sure the answer clearly exceeds the baseline.

Actions:

- Compare section by section against `challenges/ops-coo-009/claude_baseline.md`.
- Mark where our answer is stronger, equal, or weaker.
- Fix equal/weaker areas.

Checklist:

- More concrete artifact than Claude.
- More honest/defensible evidence than Claude.
- Better personal AI workflow proof than Claude.
- Better memory loop than Claude.
- Better source-label discipline than Claude.
- No generic risk tiering.

Deliverable:

- Review notes and final revision list.

Acceptance criteria:

- No section merely ties Claude.
- At least one reviewer can inspect the artifact and understand the operating system without explanation.

### 12. Final QA And Submission Pack

Goal: send a clean packet.

Actions:

- Check every number label.
- Check every link/path.
- Check evidence log source paths.
- Check AI disclosure.
- Check what breaks it and what stays human.
- Include LinkedIn URL and MMPI result as required by the brief.
- Export to PDF or final Markdown.

Deliverable:

- Submission-ready packet.

Acceptance criteria:

- Written answer, artifact, evidence log, number labels, AI disclosure, failure modes, human boundaries, LinkedIn, and MMPI are all present.
- No unsupported compensation/remoteness/role claims.
- No share-sensitive internal information leaks.

## Progress

- Part 1 source draft created: `tasks/ops-coo-009-written-part1-v0.md`.
- Part 2 source draft created: `tasks/ops-coo-009-written-part2-v0.md`.
- Part 3 source draft created: `tasks/ops-coo-009-written-part3-v0.md`.
- Part 4 source draft created: `tasks/ops-coo-009-written-part4-v0.md`.
- Primary Part 4 proof source selected: `tasks/evidence/heavisideos-slack-eval-redacted-summary.md`.
- Evidence log skeleton created: `tasks/ops-coo-009-evidence-log-v0.md`.
- User-input packet created: `tasks/ops-coo-009-user-input-needed.md`.
- AI usage disclosure drafted: `tasks/ops-coo-009-ai-disclosure-v0.md`.
- Clean final AI usage disclosure created: `tasks/ops-coo-009-ai-disclosure-final.md`.
- Final packet skeleton created: `tasks/ops-coo-009-final-packet-skeleton.md`.
- Completion audit created: `tasks/ops-coo-009-completion-audit.md`.
- Compressed written answer draft created: `tasks/ops-coo-009-final-written-v0.md`.
- Beat-Claude review created: `tasks/ops-coo-009-beat-claude-review-v0.md`.
- Operational experience candidate options created: `tasks/ops-coo-009-operational-experience-options.md`.
- Source pack created: `tasks/ops-coo-009-source-pack-v0.md`.
- Attachment manifest created: `tasks/ops-coo-009-attachment-manifest-v0.md`.
- Final-candidate operating artifact created: `tasks/ops-coo-009-operating-artifact-final-candidate.md`.
- Clean final operating artifact created: `tasks/ops-coo-009-operating-artifact-final.md`.
- Operational experience insert candidates created: `tasks/ops-coo-009-operational-experience-inserts-v0.md`.
- MMPI-style self-assessment candidate created: `tasks/ops-coo-009-mmpi-style-self-assessment-candidate.md`.
- Compressed written answer v1 candidate created: `tasks/ops-coo-009-final-written-v1-candidate.md`.
- Default-final written answer created: `tasks/ops-coo-009-final-written-defaults.md`.
- Beat-Claude review v1 candidate created: `tasks/ops-coo-009-beat-claude-review-v1-candidate.md`.
- Chris confirmation checklist created: `tasks/ops-coo-009-chris-confirmation-checklist.md`.
- Final QA precheck created: `tasks/ops-coo-009-final-qa-precheck-v0.md`.
- Submission packet candidate created: `tasks/ops-coo-009-submission-packet-candidate.md`.
- Optional redacted proof summaries created:
  - `tasks/evidence/x-accel-gate-redacted-summary.md`
  - `tasks/evidence/sloanevault-memory-redacted-summary.md`
  - `tasks/evidence/decision-council-redacted-summary.md`
- Finalization runbook created: `tasks/ops-coo-009-finalization-runbook.md`.
- Final QA helper script created: `tasks/ops-coo-009-qa-check.sh`.
- Written-answer compact PDF export script created: `tasks/ops-coo-009-export-written-pdf.sh`.
- User response form created: `tasks/ops-coo-009-user-response-form.md`.
- Approval brief created: `tasks/ops-coo-009-approval-brief.md`.
- Approval-gated assembly script created: `tasks/ops-coo-009-assemble-approved-defaults.sh`.
- Assembly script now generates `candidate-profile.md` after approval so the final upload bundle explicitly includes the LinkedIn URL and MMPI-style self-assessment.
- Default-final packet passes `tasks/ops-coo-009-qa-check.sh` mechanically with redaction warnings.
- Default-final written answer exports to 2-page compact PDF: `tasks/exports/ops-coo-009-final-written-defaults-compact.pdf`.
- Assembly preflight passes without creating the upload directory, including live role check, PDF export, final QA on a full temporary upload set, approved temporary evidence log, temporary `candidate-profile.md`, manifest, live-role-check file, exact nine-file/non-empty check, and upload-directory packaging scan.
- Assembly script refuses without `--approved-defaults`.
- User approval and shareability decisions still gate submission; the assembly script performs the final live posting recheck.

## Immediate Next Step

Get Chris to confirm/edit the candidate operational-experience and MMPI sections, confirm or replace the candidate public-source LinkedIn URL, then rerun the Beat-Claude review if needed and assemble with the approval-gated script, which performs the live GM posting check before bundle creation.
