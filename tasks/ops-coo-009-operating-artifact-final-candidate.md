# Ops COO 009 - Operating Artifact Final Candidate

Draft status: candidate attachment. Use after final label/sensitive-info audit.

Purpose: convert Single Grain's 50+ daily AI outputs `[Observed from brief]` into accepted work, owner action, outcome logs, and memory updates while reducing Eric's approval load from 60+ minutes/day `[Observed from brief]` to 15 minutes/day `[Observed from brief]` and 3-5 real decisions/day `[Observed from brief]`.

Number-source rule: challenge facts are labeled `[Observed from brief]`; proposed operating thresholds and cadences are labeled `[Assumed]` until calibrated against Single Grain's real queue, CRM, analytics, and team capacity.

## 1. Closed-Loop Operating Model

```text
Agent output
  -> source check
  -> score-to-route gate
  -> green / yellow / red path
  -> owner execution
  -> outcome log
  -> memory/rule update
  -> next run improves
```

Core rule: an AI output does not count until it becomes an accepted action, explicit rejection, owner assignment, or rule update.

## 2. First 48-Hour Command Queue

Replace scattered Mission Control, Slack, CRM, email, and agent messages with one visible queue.

| Status | Meaning | SLA |
|---|---|---|
| `dead` | Duplicate, stale, irrelevant, or no longer recoverable. | Same-day close `[Assumed]` |
| `needs_source_check` | Potentially useful, but source/data is not verified. | 4 business hours `[Assumed]` |
| `green_auto` | Low-risk, reversible, source-verified, known pattern. | Same day `[Assumed]` |
| `yellow_owner` | Needs GM/domain owner review, not Eric. | 4 business hours `[Assumed]` |
| `yellow_council` | High-value ambiguity needing expert-lens judgment. | 24 hours `[Assumed]` |
| `red_eric` | Strategic, irreversible, public, pricing, legal, people, or key-relationship risk. | Eric's 30-minute block `[Observed from brief]` |
| `executed` | Action taken and owner assigned. | Log within 24 hours `[Assumed]` |
| `learning_logged` | Outcome changed a rule, prompt, threshold, or SOP. | Weekly sweep `[Assumed]` |

## 3. Day-One Fire Order

| Fire / item group | Initial route | Why | First action | Eric needed? |
|---|---|---|---|---|
| 2 ClickFlow churn customers `[Observed from brief]` | `yellow_owner` -> possible `red_eric` | Active revenue loss outranks backlog cleanup. | Pull usage, last touch, ticket history, contract value, churn signal, and save path. | Only for pricing concession, strategic relationship, or CEO-weight save call. |
| 3 stale sales prospects `[Observed from brief]` | `yellow_owner` | Pipeline decay has time value but rarely needs CEO review. | Check stage, last reply, source, relationship risk, owner, and trigger. Re-entry note or mark dead. | Only named account / Eric relationship. |
| 23 pending review items `[Observed from brief]` | Batch through score gate. | Age is a symptom; contents decide priority. | Sort into statuses above. Pull only 3-5 red items `[Observed from brief]` for Eric. | Red items only. |
| 15 Oracle quick-win keywords `[Observed from brief]` | `needs_source_check` -> `green_auto` or `yellow_owner` | SEO upside exists only if source, intent, existing page, and owner check out. | Verify GSC/GA4 data, existing-page fit, intent, effort, and top 3-5 `[Assumed]`. | No unless strategic page/brand risk. |

## 4. Eric's 30-Minute Calibration Block

The minute splits are `[Assumed]` agenda design inside Eric's 30-minute availability `[Observed from brief]`.

| Minute | Ask | Output |
|---:|---|---|
| 0-5 | "I am handling churn, stale prospects, and queue routing first. Any reversal?" | Priority confirmation |
| 5-12 | "Which actions are never auto-approved?" | Red-line list |
| 12-18 | "What can I decide without you for 7 days `[Assumed]`?" | Temporary delegation boundary |
| 18-24 | Review only 3-5 `red_eric` items `[Observed from brief]`. | Decisions / deferrals |
| 24-30 | "Which metric should be on tomorrow morning's briefing?" | CEO leverage metric |

## 5. Score-To-Route Gate

Separate value from risk. A blended score should never hide an irreversible or reputation-sensitive item.

### Action Value Score

Each field is scored 0/1/2 `[Assumed]`; max value score is 12 `[Assumed]`.

| Field | 0 | 1 | 2 |
|---|---|---|---|
| Revenue proximity | No revenue tie | Indirect revenue / productivity | Active revenue, pipeline, churn, retention |
| Time sensitivity | Can wait a week | Needs this week | Degrades within 24-48 hours |
| Source confidence | Vague / unverified | Partial source | Source record available |
| Owner clarity | No owner | Owner category known | Named owner can act today |
| Effort size | >1 day | Half-day | <1 hour |
| Learning value | One-off | Some pattern value | Improves future routing/prompt/rule |

### Risk Flags

| Flag | Route pressure | Examples |
|---|---|---|
| Irreversible customer-facing commitment | Red | Pricing, refund, contract, public promise |
| Strategic relationship / named account | Red | CEO relationship, enterprise logo, partner |
| Brand/public reputation risk | Red | Strong POV, public figures, competitors |
| Legal/privacy/security risk | Red | PII, data access, compliance |
| High financial exposure | Red | Spend changes, custom deal structure |
| Novel action with no precedent | Yellow | First live execution of a workflow |
| Low source confidence | Yellow | Agent lacks source record |
| Reversible routine action | Green possible | Internal brief, approved-template draft, owner reminder |

### Routing Rules

| Route | Criteria | Examples | Logging |
|---|---|---|---|
| Green | Value >= 7 `[Assumed]`, no red flags, source verified, reversible, known pattern. | Internal brief, approved-template content, routine SEO title/internal-link task. | Auto-execute; daily summary. |
| Yellow owner | Value >= 5 `[Assumed]` or source/risk uncertainty without CEO-specific risk. | Churn investigation, new-page SEO recommendation, non-ICP prospect, sales re-entry note. | Owner review within 4h `[Assumed]`; outcome logged. |
| Yellow council | High-value ambiguity where expert judgment improves the call. | Creative refresh, channel pivot, SEO/content positioning, paid media restructure. | Council memo; GM decision. |
| Red Eric | Any red flag or CEO-specific context. | Pricing, strategic account, public controversy, irreversible customer promise, senior people issue. | 3-5 item Eric queue `[Observed from brief]`. |
| Kill/defer | Value < 5 `[Assumed]` and no time-sensitive downside. | Daily competitor pricing noise, low-signal candidate follow-up. | Rejection reason logged. |

## 6. Agent-Specific Examples

| Agent | Green | Yellow | Red |
|---|---|---|---|
| Oracle | Existing-page metadata/internal-link quick win with verified GSC/GA4 data. | New page, mixed intent, material rewrite. | Public SEO claim, strategic positioning page, customer-sensitive case study. |
| Flash | Repurpose approved video into template-matched post. | New hook pattern, strong POV, competitor mention. | Public figure, partner, legal/brand-sensitive claim. |
| Cyborg | Follow-up inside approved sequence for non-strategic prospect. | New ICP edge case, high-fit senior buyer, unusual personalization. | Eric relationship, named account, offer/pricing change. |
| Alfred | Internal briefing, owner reminder, cross-agent status summary. | Churn investigation, deal revival, workflow proposal. | New core cron, killing core cron, pricing/client escalation. |

## 7. Cron Audit Framework

Audit question: does this cron create accepted work or review debt?

Score each cron by action rate, revenue proximity, review burden, source quality, owner clarity, false-positive cost, false-negative cost, and memory feedback `[Assumed]`.

| Cron | Current signal | Verdict | Reason | 30-day change |
|---|---:|---|---|---|
| GSC Quick Win Scan | 12% actioned `[Observed from brief]` | Improve | Potentially valuable, but current volume creates noise. | Surface only 3-5 items `[Assumed]` with verified source, existing page, conversion intent, and <2h effort `[Assumed]`. |
| LinkedIn Prospect Sourcer | 8% meetings `[Observed from brief]` | Improve | Pipeline-relevant, but 2x/day `[Observed from brief]` likely floods review. | Tighten ICP/trigger/relationship score; batch daily `[Assumed]`. |
| Content Repurpose - YouTube | 35% published `[Observed from brief]` | Keep / improve | Editorial rejection is healthy; needs winner/loser memory. | Feed accepted/rejected hooks into memory weekly `[Assumed]`. |
| Deal Revival Scan | 60% followed up `[Observed from brief]` | Keep | Revenue-proximate, low-volume, clear owner action. | Require follow-up outcome logging. |
| Competitor Pricing Monitor | 3% action `[Observed from brief]` | Kill / pause | Daily pricing scrape creates rare action and executive distraction. | Replace with monthly or exception-based scan `[Assumed]`. |
| Churn Signal Detector | 20% investigated `[Observed from brief]` | Improve urgently | False negatives are expensive; response loop is broken. | Same-day yellow escalation with owner, source links, customer state, and save-play status `[Assumed]`. |
| Weekly Content Calendar | 50% used `[Observed from brief]` | Keep / improve | Useful planning artifact if tied to accepted work. | Reduce to top opportunities and track publish/outcome. |
| Candidate Outreach Follow-up | 5% response `[Observed from brief]` | Kill / redesign | Low response plus brand risk from robotic follow-up. | Kill auto-follow-up; weekly top-5 human review only `[Assumed]`. |

## 8. Mistake Handling

When a green item should not have auto-executed:

1. Reverse if reversible.
2. Notify the owner in 3 lines `[Assumed]`: what happened, current risk, correction.
3. Move the item type from green to yellow.
4. Add a memory record with failed rule, source, route, impact, and new threshold.
5. Review weekly `[Assumed]`; 2 repeated failures `[Assumed]` in one category means the rule is wrong.

## 9. Memory Record Schema

```yaml
item_id:
agent:
source_links:
input_summary:
route: green_auto | yellow_owner | yellow_council | red_eric | killed
route_reason:
owner:
action_taken:
outcome_metric:
failure_or_exception:
rule_update:
next_review_date:
```

## 10. Operating Cadence

| Cadence | Artifact / meeting | Purpose |
|---|---|---|
| Daily 7:30 AM `[Assumed]` | CEO leverage briefing | 3-5 red decisions `[Observed from brief]`, churn/pipeline exceptions, yesterday's executed count. |
| Daily 4:30 PM `[Assumed]` | Queue closeout | Zero unowned yellow/red items; all executions logged. |
| Weekly `[Assumed]` | Cron audit / rule tuning | Kill, pause, tighten, or graduate crons based on outcomes. |
| Weekly `[Assumed]` | Memory sweep | Convert repeated decisions into rules, prompts, SOPs, or kill criteria. |
| Monthly `[Assumed]` | Revenue-per-employee review | Tie AI leverage to revenue, retention, margin, and productivity. |

## 11. What Stays Human

- Pricing, discounts, refunds, contract terms, and spend-risk decisions.
- Strategic account communication and client retention conversations where trust is at risk.
- Public claims involving customers, partners, competitors, public figures, or legal/regulatory issues.
- Hiring/firing, senior candidate persuasion, and people conflict.
- Automation rules that have not survived live review.
- Eric-specific taste, vision, partnerships, and strategic priority tradeoffs.

## 12. What Breaks It

- Source data is wrong, stale, missing, or inaccessible.
- Agents optimize output volume instead of accepted work.
- Yellow items have no owner or no SLA.
- Eric keeps reviewing non-red decisions.
- Councils become delay theater instead of high-value judgment.
- Memory records are not updated, so mistakes repeat.
- Churn/pipeline items are treated like ordinary queue items.
- The dashboard becomes the work instead of a trigger for execution.

## 13. Evidence Hooks

| Claim in packet | Candidate proof |
|---|---|
| I use gated scoring / routing patterns in production. | x-accel gate/scoring source records and sanitized example. |
| I use expert councils for judgment, not generic prompting. | Decision Council guide and safe council artifact. |
| I maintain durable operating memory. | SloaneVault/qmd index, lessons, project notes, decision logs. |
| I have measured and improved AI assistant usefulness. | Redacted HeavisideOS Slack assistant eval summary. |
| I understand maturity limits. | Explicit distinction among x-accel, SloaneVault, and early-stage HeavisideOS. |
