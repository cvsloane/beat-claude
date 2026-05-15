# Hermes / Open-Agents Scheduler Fleet - Redacted Summary

Purpose: support the `ops-coo-009` cron-audit section with bounded evidence that Chris operates a real scheduled-agent / cron fleet, not just a proposed cron framework.

## Snapshot

Checked: 2026-05-14.

Source records:

- Internal repo manifest: `open-agents/hermes/jobs/open-agents.json`
- Internal repo manifest: `open-agents/hermes/jobs/cold-email.json`
- Internal repo manifest: `open-agents/hermes/jobs/agent-commander.json`
- Local Hermes scheduler state via `sync-hermes.py --verify` and `hermes-fleet.py status --json`
- Internal monitor guide: `open-agents-monitor/DETAILED_GUIDE.md`

## Observed Counts

| Source | Count / status |
|---|---:|
| Repo-verified Hermes jobs | `88` |
| Hermes skills checked | `28` |
| Managed contexts checked | `3` |
| Job-manifest issues | `0` |
| Skill content mismatches | `4` |
| Fleet nodes healthy | `3/3` |
| HQ jobs healthy/scheduled | `61/61` |
| Cold-email jobs intentionally paused | `19` |
| Worker jobs reporting `ok` | `6/6` |

## What This Proves

- Chris operates a real scheduled-agent / cron fleet with more than `80` checked jobs.
- The fleet has explicit pause/disable state, last-run status, next-run timing, routing, delivery surfaces, stale thresholds, and monitoring checks.
- The operating posture is not "keep every cron on." The cold-email manifest currently has `19` intentionally paused jobs pending launch-state verification, which is consistent with the packet's kill/pause/tighten philosophy.
- The system exposes drift instead of hiding it: verification showed `4` skill content mismatches even though job manifests had no issues.

## Caveats

- This is Tier 3 internal source-record evidence, not independent verification.
- This does not prove every scheduled job is high-value.
- This does not prove enterprise-scale Single Grain operations experience.
- Do not attach raw scheduler state externally without reviewing for private routing/channel metadata.

## Safe Submission Wording

> I also operate a Hermes/open-agents scheduler fleet. On 2026-05-14, repo verification checked `88` jobs, `28` skills, and `3` managed contexts with no job-manifest issues, and live fleet status reported healthy across `3/3` nodes `[Observed internal scheduler state]`. I would treat that as proof of cron-fleet operating exposure, not proof that every cron deserves to exist. The useful lesson is the same as my Single Grain plan: crons need owners, monitoring, pause/kill states, error visibility, and accepted-work feedback.
