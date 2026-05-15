# Hermes Closed-Loop Agent Proof

Status: support artifact / public-page source material. Do not attach raw manifests unless requested.

Purpose: connect Chris's Hermes/open-agents experience to the `ops-coo-009` problem: AI systems generating outputs that must be converted into outcomes.

## Source Basis

| Source | What it supports |
|---|---|
| `/home/cvsloane/dev/open-agents/ARCHITECTURE.md` | Skills -> Agents -> Hermes Jobs maturity model; fleet topology; data flow; Discord routing; Redis/run state. |
| `/home/cvsloane/dev/open-agents/hermes/jobs/open-agents.json` | HQ scheduled jobs for infra, queue health, backups, project status, security, incidents, research, content, inbox, fleet, X/content, and business summaries. |
| `/home/cvsloane/dev/open-agents/hermes/jobs/cold-email.json` | Cold-email operations jobs for health, deliverability, copy audit, experiment management, reply ingest/triage, report fulfillment, GHL sync, and pod seeding/top-up. |
| `/home/cvsloane/dev/open-agents/hermes/jobs/agent-commander.json` | Agent Commander watchdog, governance digest, and daily briefing jobs. |
| Hermes live checks on 2026-05-14 | `sync-hermes.py --verify` checked `88` jobs, `28` skills, `3` contexts with no job issues; `hermes-fleet.py status --json` reported the fleet healthy across `3/3` nodes. |

## What Hermes Does

Hermes is the production scheduling and routing layer for open-agents. The operating pattern is:

```text
scheduled trigger
  -> prompt / skill / context
  -> agent or script execution
  -> local output and trace
  -> routing decision
  -> Discord / local surface / alert
  -> follow-up, pause, retry, or memory/process update
```

That is the same shape as the Single Grain problem: outputs are only useful when they get routed, reviewed, accepted, rejected, escalated, or written back into an operating system.

## Current Workflow Categories

| Category | Example jobs | Outcome loop |
|---|---|---|
| Infrastructure and queue health | Infra Health, Queue Health, DB Backup, DB Anomaly, Disk Usage, Certificate Expiry, DNS Verification | Outputs route to local/monitoring surfaces; warnings/errors trigger investigation instead of passive reporting. |
| Fleet operations | Fleet Summary, Fleet Alert Rollup, Apps VPS Summary, HomeLinux Summary | Worker outputs are relayed to the right surface; cross-node health becomes an operating status, not separate logs. |
| Incident and watchdog loops | Incident Responder, Incident TTL Sweep, Watchdog, Control Plane Burn-In | Jobs produce retry/alert/status loops with pause/error visibility. |
| Research and content | Research: Dev Tools & AI Agents, Marketing & Ads, Cold Email & Deliverability, Client Industry Intel, Research Content Drafter | Research outputs become candidate content drafts or approval items rather than loose notes. |
| Business and marketing ops | Meta Ads Daily Briefing, Content Strategy, Engagement Digest, Weekly X Growth Report, X Watchlist, inbound/competitor monitoring | Agent outputs are routed into operating decisions around ads, content, X, and market signals. |
| Inbox / executive assistant | EA Inbox Processor, M365/GWS inbox triage, follow-up sweep, meeting prep, day brief | Information gets triaged into briefs, follow-ups, or next actions. |
| Cold email operations | Health check, deliverability watchdog, copy audit, experiment manager, reply ingest/triage, daily report, GHL sync, pod seeding/top-up | Cold-email output can move into replies, triage, reporting, GHL updates, and campaign/copy operations. |
| Agent Commander | Watchdog, governance digest, daily briefing | Agent run state becomes a governance surface rather than invisible background activity. |

## Evidence Boundaries

- The packet should continue to use Hermes as bounded proof of operating a monitored scheduled-agent / cron fleet.
- Do not claim every Hermes job is high-value.
- Do not claim cold email is clean current performance proof unless live credentials and launch state are verified.
- The useful proof is operating maturity: jobs have manifests, schedules, skills, routing, output surfaces, live status, pause/disabled states, retries, and alerts.

## Application Use

Best concise phrasing:

> I operate Hermes/open-agents as a closed-loop scheduler and agent layer. It handles research, content drafts, infra/queue health, project status, inbox/briefing flows, fleet monitoring, and cold-email operations. The point is not more AI output. The point is that outputs have routes: alert, owner action, approval draft, report, CRM/GHL sync, pause, retry, or rule update.

Use this in interviews, cover letter context, or as supporting context behind `csloane.com/numbers`. Keep the main challenge answer focused on Single Grain's operating system.
