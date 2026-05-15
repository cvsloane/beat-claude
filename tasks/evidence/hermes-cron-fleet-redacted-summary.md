# Hermes / Open-Agents Scheduler Fleet - Redacted Summary

Purpose: support the `ops-coo-009` cron-audit section with bounded evidence that Chris operates a real scheduled-agent / cron fleet, not just a proposed cron framework.

## Snapshot

Checked: 2026-05-13 20:42 ET.

Source records:

- Internal repo manifest: `open-agents/hermes/jobs/open-agents.json`
- Internal repo manifest: `open-agents/hermes/jobs/cold-email.json`
- Internal repo manifest: `open-agents/hermes/jobs/agent-commander.json`
- Local Hermes scheduler state snapshot: `Hermes cron jobs.json`
- Internal monitor guide: `open-agents-monitor/DETAILED_GUIDE.md`

## Observed Counts

| Source | Count |
|---|---:|
| `open-agents` repo-owned jobs | `66` |
| `cold-email` repo-owned jobs | `19` |
| `agent-commander` repo-owned jobs | `3` |
| Live Hermes scheduler jobs | `88` |
| Live enabled jobs | `64` |
| Live disabled / paused jobs | `24` |
| Live jobs with last status `ok` | `86` |
| Live jobs with last status `error` | `2` |

Live scheduler state `updated_at`: `2026-05-13T20:42:04.721765-04:00`.

## What This Proves

- Chris operates a real scheduled-agent / cron fleet with more than `80` scheduled jobs.
- The fleet has explicit pause/disable state, last-run status, next-run timing, routing, delivery surfaces, stale thresholds, and monitoring checks.
- The operating posture is not "keep every cron on." At the snapshot, `24` jobs were disabled or paused, which is consistent with the packet's kill/pause/tighten philosophy.
- The system exposes errors instead of hiding them: `2` jobs showed last-status `error` at the snapshot.

## Caveats

- This is Tier 3 internal source-record evidence, not independent verification.
- This does not prove every scheduled job is high-value.
- This does not prove enterprise-scale Single Grain operations experience.
- Do not attach raw scheduler state externally without reviewing for private routing/channel metadata.

## Safe Submission Wording

> I also operate a Hermes/open-agents scheduler fleet with `88` live-state scheduled jobs as of 2026-05-13 20:42 ET `[Observed internal scheduler state]`: `64` enabled, `24` paused/disabled, `86` last-status ok, and `2` last-status error. I would treat that as proof of cron-fleet operating exposure, not proof that every cron deserves to exist. The useful lesson is the same as my Single Grain plan: crons need owners, monitoring, pause/kill states, error visibility, and accepted-work feedback.
