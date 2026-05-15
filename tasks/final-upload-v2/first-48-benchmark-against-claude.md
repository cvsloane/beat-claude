# First 48 Hours Benchmark Against Claude

Date: 2026-05-14.

Sources:

- `SCORING.md`.
- `challenges/ops-coo-009/scoring_rubric.md`.
- `challenges/ops-coo-009/brief.md`.
- `challenges/ops-coo-009/claude_baseline.md`.
- Current packet: `written-answer.md` and `operating-artifact.md`.

This is internal QA. It applies the public gates. It does not claim to know
Single Grain's private scoring key.

## Bottom Line

Claude has the right fire order: churn first, stale prospects second, queue
backlog third.

The current plan keeps that order, but adds the missing GM layer: decision
rights, source confidence, team routing, safe execution, and closed-loop
ownership.

Score read:

- Claude first-48 plan: `8.2/10`.
- Current first-48 plan: `9.6/10`.

## Current Plan

Assumption: core access is available Monday.

1. Hours `0-2` `[Assumed]`: build the temporary triage view. Pull Mission
   Control, CRM, ClickFlow usage, sales history, Slack/Gong context, GA4/GSC,
   Oracle output, and ownership. No broad action yet.
2. Hours `2-4` `[Assumed]`: use AI analysis plus operator review to classify
   the `23` pending items, `2` lost ClickFlow customers, `3` stale prospects,
   and `15` Oracle keywords `[Observed from brief]`.
3. Hours `4-6` `[Assumed]`: prepare the first execution proposal and Eric
   packet. Eric sees temporary decision rights, never-auto rules, pricing or
   relationship calls, and the highest-risk red items.
4. Hours `6-8` `[Assumed]`: tee up safe execution. Sales gets re-entry notes.
   Churn items get owners and save paths. Dead items close. Source checks are
   assigned.
5. Day `2` `[Assumed]`: execute through the team. Sales works prospects. Shaun
   diagnoses agent/data failures. AI drafts, clusters, summarizes, and
   source-checks. The GM routes green, yellow, and red work.

End state: every known item has an owner, due time, rejection reason,
source-check state, or Eric decision slot.

## Prompt Check

First `48` hours:

- Claude is clear and competent.
- Current plan is more realistic because it follows access -> assessment ->
  proposal -> execution.

Triage the `23` pending items:

- Claude reads and categorizes the queue.
- Current plan gives every item a state: source-check, green, yellow, red, or
  dead. It also tracks owner and writeback status.

Which fire first:

- Claude gets the order right.
- Current plan keeps the order and adds risk control around pricing,
  relationship, and customer-trust calls.

Eric's `30` minutes:

- Claude asks useful calibration questions.
- Current plan uses the block for red lines, temporary decision rights,
  `3-5` red decisions `[Observed from brief]`, and the CEO leverage metric.

Day-one team:

- Claude mostly frames action as the operator doing the work.
- Current plan assigns work through sales, Shaun, the agent system, Eric, and
  the GM.

## Public SCORING.md Gates

Strategic judgment:

- Claude: `8.3`.
- Current: `9.6`.
- Read: both pick the right fire order. Current is stronger on decision rights,
  context risk, and CEO leverage.

Execution detail:

- Claude: `8.4`.
- Current: `9.6`.
- Read: Claude gives actions. Current gives queue states, owner paths,
  writebacks, and a day-two team model.

Evidence quality:

- Claude: `6.5`.
- Current: `9.1`.
- Read: Claude has no lived proof. Current packet ties the plan to real systems,
  Hermes crons, agency automation, and financial history.

AI fluency:

- Claude: `7.8`.
- Current: `9.4`.
- Read: current plan uses AI as an analysis, scoring, and source-checking layer
  with human boundaries.

Communication:

- Claude: `8.7`.
- Current: `9.4`.
- Read: Claude is clear. Current answer is shorter, more direct, and less
  generic.

## Ops Rubric Gates

Real judgment:

- Claude: `8.3`.
- Current: `9.6`.
- Read: current plan respects the `16` working-hour reality `[Assumed]`.

Execution artifact:

- Claude: `7.3`.
- Current: `9.7`.
- Read: current packet has an inspectable artifact: queue states, gate, cron
  audit, dashboard, cadence, memory schema, and failure modes.

Source-labeled specificity:

- Claude: `7.2`.
- Current: `9.3`.
- Read: current packet labels challenge numbers, assumptions, estimates, and
  evidence tiers.

Proof quality:

- Claude: `5.5`.
- Current: `9.2`.
- Read: Claude cannot provide personal proof. Current packet points to private
  records, inspectable systems, summaries, and the live support page.

AI fluency with limits:

- Claude: `7.8`.
- Current: `9.5`.
- Read: current plan says what AI does and what stays human.

Failure handling:

- Claude: `7.8`.
- Current: `9.4`.
- Read: current plan names bad source data, owner gaps, Eric review creep,
  missing memory, and green-route mistakes.

## Win/Lose Check

The current plan avoids the losing patterns:

- It does not start with stakeholder meetings.
- The risk tiers are concrete.
- The cron audit kills or pauses `2` jobs.
- The AI edge is built systems, not "I use ChatGPT."
- The plan is specific to Single Grain, ClickFlow, Oracle, TES, Eric, and the
  day-one team.

The current plan hits the winning patterns:

- Triage shows revenue-risk pattern recognition.
- The routing system is usable Monday.
- The plan closes loops instead of opening workstreams.
- The packet shows real automated-system management.

## Applied Fixes

- The official answer now says `2` lost ClickFlow customers, matching the brief
  more closely than "churn accounts."
- The first-day language now says the goal is to know what moves, waits, or
  needs Eric. It does not imply every customer issue is solved in `8` hours
  `[Assumed]`.
- The support artifact keeps the literal first-48 timeline for reviewers who
  want more detail.

## Approval Read

Approve the current 48-hour plan.

It beats Claude because it keeps Claude's correct priority order while adding
the missing GM layer: decision rights, source confidence, team routing, safe
execution, and closed-loop ownership.
