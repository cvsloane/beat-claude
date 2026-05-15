# Ops COO 009 - Operating Artifact v0

Draft status: working artifact, not final submission copy.

Number-source policy: challenge facts are labeled `[Observed from brief]`. Proposed thresholds, SLAs, agenda splits, and cadence times are labeled `[Assumed]` because they are v0 operating rules I would calibrate after seeing the actual queue, CRM, product data, and team capacity.

Purpose: show the operating system I would install at Single Grain to turn 50+ daily AI outputs `[Observed from brief]` into ranked decisions, executed work, and compounding memory while reducing Eric's approval load to 3-5 decisions/day `[Observed from brief]`.

## 1. Operating Loop

```text
Agent output
  -> Source check
  -> Score-to-route gate
  -> Green / Yellow / Red action path
  -> Execution owner
  -> Outcome log
  -> Rule or memory update
  -> Next agent run improves
```

Principle: outputs do not count until they become an accepted decision, executed action, or explicit rejection with a reason.

## 2. First 48-Hour Command Queue `[Observed from brief]`

Use one queue immediately. Do not leave work spread across Mission Control, Slack, CRM, email, and agent messages.

### Statuses

| Status | Meaning | SLA |
|---|---|---|
| `dead` | Stale, duplicate, irrelevant, or no longer recoverable | Same-day close `[Assumed]` |
| `needs_source_check` | Potentially useful but data/source is unverified | 4 business hours `[Assumed]` |
| `green_auto` | Low-risk, reversible, high-confidence, known pattern | Same day `[Assumed]` |
| `yellow_owner` | Needs domain owner/GM review, not Eric | 4 business hours `[Assumed]` |
| `yellow_council` | Ambiguous/high-value; needs expert-lens review | 24 hours `[Assumed]` |
| `red_eric` | Irreversible, strategic, public/relationship/pricing risk | Eric's 30-min block `[Observed from brief]` |
| `executed` | Action taken; outcome owner assigned | Log within 24 hours `[Assumed]` |
| `learning_logged` | Outcome changed a rule, prompt, threshold, or SOP | Weekly sweep `[Assumed]` |

### Day 1 Triage Rows `[Assumed]`

Numbers below are from the challenge brief unless labeled otherwise.

| Item group | Initial route | Why | First action | Owner | Eric needed? |
|---|---|---|---|---|---|
| 2 ClickFlow churn customers `[Observed from brief]` | `yellow_owner` -> possible `red_eric` | Active revenue loss; churn risk beats backlog cleanup. | Pull usage, last touch, ticket history, contract value, and churn signal. Draft a save plan for each affected account. | GM + Shaun for data | Only if pricing concession, strategic relationship, or save call needs CEO weight |
| 3 stale sales prospects `[Observed from brief]` | `yellow_owner` | Pipeline decay has time value, but most should not need CEO review. | Check last reply, deal size, source, relationship owner, and trigger. Hand closer a re-entry note or mark dead. | GM + closer | Only named-account / Eric relationship |
| 23 pending review items `[Observed from brief]` | Batch through score gate | Queue age itself is a symptom; contents decide priority. | Sort into statuses above. Kill/defer noise. Pull 3-5 `[Observed from brief]` red decisions for Eric. | GM | Only red items |
| 15 Oracle quick-win keywords `[Observed from brief]` | `needs_source_check` -> `green_auto` or `yellow_owner` | SEO upside is real only if source data and business intent check out. | Verify GSC/GA4 data for sample, existing page fit, intent, effort, and owner. Pick top 3-5 `[Assumed]`. | GM + SEO/content owner | No, unless strategic page/brand risk |

## 3. Eric's 30-Minute Block

The goal is not discovery. The goal is decision-rights calibration.

Minute splits are `[Assumed]` agenda design inside Eric's 30-minute availability `[Observed from brief]`.

| Minute | Ask | Output |
|---:|---|---|
| 0-5 | "Here are the 3 fires `[Observed from brief]` I am handling: churn, stale pipeline, queue routing. Any reversal?" | Confirms priority order |
| 5-12 | "Which actions are never auto-approved: pricing, named accounts, public claims, headcount, legal, client escalations?" | Red-line list |
| 12-18 | "What can I decide without you for the next 7 days `[Assumed]`?" | Temporary delegation boundary |
| 18-24 | Review 3-5 `[Observed from brief]` `red_eric` items only | Decisions or deferrals |
| 24-30 | "Which metric should be on tomorrow morning's briefing?" | CEO leverage metric |

## 4. Score-to-Route Gate

Do not use one blended score to hide risk. Score business value separately from risk.

The 0/1/2 point scale and routing thresholds below are `[Assumed]` v0 decision rules. They should be tuned after one week `[Assumed]` of actual queue outcomes.

### A. Action Value Score

| Field | 0 | 1 | 2 |
|---|---|---|---|
| Revenue proximity | No revenue tie | Indirect revenue / productivity | Active revenue, pipeline, churn, or retention |
| Time sensitivity | Can wait a week | Needs this week | Degrades within 24-48 hours |
| Source confidence | Unverified / vague | Partial source or inferred | Source record available |
| Owner clarity | No obvious owner | Owner category known | Named owner can act today |
| Effort size | >1 day | Half-day | <1 hour |
| Learning value | One-off | Some pattern value | Improves future routing/prompt/rule |

Max value score: 12 `[Assumed]`.

### B. Risk Flags

| Flag | Red? | Examples |
|---|---:|---|
| Irreversible customer-facing commitment | Yes | Pricing, refund, contract, public promise |
| Strategic relationship / named account | Yes | Eric relationship, enterprise logo, partner |
| Brand/public reputation risk | Yes | Strong POV content, public figures, competitors |
| Legal/privacy/security risk | Yes | Data access, customer PII, compliance |
| High financial exposure | Yes | Discounts, spend changes, custom deal structure |
| Novel action with no precedent | Usually yellow | First time a workflow executes |
| Low source confidence | Usually yellow | Agent output lacks source record |
| Reversible routine action | No | Internal briefing, draft, low-risk follow-up |

### C. Routing Rules

| Route | Criteria | Examples | Logging |
|---|---|---|---|
| Green | Value >= 7 `[Assumed]`, no red flags, source verified, reversible, known pattern | Internal brief distribution, approved-template content, routine SEO title/internal-link task | Auto-execute; daily summary |
| Yellow owner | Value >= 5 `[Assumed]` or source/risk uncertainty, no strategic red flag | Churn investigation, new page recommendation, non-ICP prospect, sales re-entry note | Owner review within 4h `[Assumed]`; outcome logged |
| Yellow council | High-value ambiguity where expert judgment matters | Creative refresh, channel pivot, content/SEO strategy, ambiguous paid media call | Council memo; GM decision |
| Red Eric | Any red flag or CEO-specific relationship/context | Pricing, strategic account, public controversy, irreversible customer promise, CEO-level priority tradeoff | 3-5 item Eric queue `[Observed from brief]` |
| Kill/defer | Value < 5 `[Assumed]` and no time-sensitive downside | Daily competitor pricing noise, stale candidate follow-up with low signal | Reject reason logged |

## 5. Agent-Specific Examples

| Agent | Green | Yellow | Red |
|---|---|---|---|
| Oracle | Existing-page metadata/internal-link quick win with verified GSC data | New page recommendation, material content rewrite, mixed-intent keyword | Public SEO claim, strategic positioning page, customer-sensitive case study |
| Flash | Repurpose approved video into template-matched posts | Strong POV, competitor mention, new hook pattern | Public figure, partner, legal/brand-sensitive claim |
| Cyborg | Follow-up inside approved sequence for non-strategic prospect | New ICP edge case, high-fit senior buyer, unusual personalization | Eric relationship, named account, offer/pricing change |
| Alfred | Daily briefing, cross-agent task routing, status summary | Churn investigation, deal revival, workflow proposal | New cron, kill core cron, pricing/client escalation |

## 6. Mistake Handling

When an auto-approved item fails:

1. Reverse if reversible.
2. Notify affected owner with 3 lines `[Assumed]`: what happened, current customer/business risk, correction.
3. Move that item type from green to yellow until reviewed.
4. Add failure record to memory: source, rule that failed, new threshold.
5. Review weekly `[Assumed]`. Two repeated failures `[Assumed]` in one category means the rule is wrong.

## 7. Cron Audit Table

Audit question: does this cron create an outcome or just review debt?

| Cron | Current signal | v0 verdict | Reason | 30-day change `[Assumed]` |
|---|---:|---|---|---|
| GSC Quick Win Scan | 12% actioned `[Observed from brief]` | Improve | Valuable if filtered; current volume creates noise. | Only surface 3-5 items `[Assumed]` with verified GSC data, existing page, conversion intent, and <2h effort `[Assumed]`. |
| LinkedIn Prospect Sourcer | 8% converted to meetings `[Observed from brief]` | Improve | Pipeline relevant, but 2x/day `[Observed from brief]` likely floods review. | Tighten ICP, add relationship/trigger score, batch daily `[Assumed]`. |
| Content Repurpose - YouTube | 35% published `[Observed from brief]` | Keep/improve | Some editorial rejection is healthy; needs pattern learning from winners. | Keep, but feed winners/losers into hook memory. |
| Deal Revival Scan | 60% followed up `[Observed from brief]` | Keep | Low-volume, high-outcome, clear revenue proximity. | Keep; require follow-up outcome logging. |
| Competitor Pricing Monitor | 3% led to action `[Observed from brief]` | Kill/pause | Daily scrape creates noise for rare decisions. | Replace with monthly/quarterly `[Assumed]` manual or exception-based scan. |
| Churn Signal Detector | 20% investigated `[Observed from brief]` | Improve urgently | False negatives are expensive; response process is broken. | Same-day yellow escalation, owner SLA, save-play log. |
| Weekly Content Calendar | 50% used `[Observed from brief]` | Keep/improve | Useful planning artifact if it drives accepted work. | Keep; reduce to top opportunities and track publish/outcome. |
| Candidate Outreach Follow-up | 5% response `[Observed from brief]` | Kill/redesign | Low response plus brand risk from robotic follow-up. | Kill auto-follow-up; weekly top-5 `[Assumed]` human review only. |

## 8. Memory Record Schema

Every executed or rejected output gets a compact record.

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

## 9. Operating Cadence

| Cadence | Meeting / artifact | Purpose |
|---|---|---|
| Daily 7:30 AM `[Assumed]` | CEO leverage briefing | 3-5 red decisions `[Observed from brief]`, churn/pipeline exceptions, yesterday's executed count |
| Daily 4:30 PM `[Assumed]` | Queue closeout | Zero unowned yellow/red items; all executions logged |
| Weekly `[Assumed]` | Cron audit / rule tuning | Kill, pause, tighten, or graduate crons based on outcomes |
| Weekly `[Assumed]` | Memory sweep | Convert repeated decisions into rules, prompts, SOPs, or kill criteria |
| Monthly `[Assumed]` | Revenue-per-employee review | Tie AI leverage to revenue, retention, margin, and team productivity |

## 10. What Stays Human

- Pricing, discounts, contract terms, refunds.
- Strategic account communication.
- Public claims involving customers, partners, competitors, or public figures.
- Client retention conversations where trust is at risk.
- Hiring/firing and senior candidate persuasion.
- Any automation rule that has not survived live review.

## 11. What Breaks This

- Source data is wrong, missing, stale, or inaccessible.
- Agents optimize output volume instead of accepted work.
- No one owns yellow items.
- Eric continues to review non-red decisions.
- Councils become a delay mechanism instead of a judgment tool.
- Memory records are not updated, so mistakes repeat.
- The team treats the dashboard as the work instead of using it to trigger execution.

## 12. Evidence Hooks For Final Packet

| Claim | Candidate proof |
|---|---|
| I use gated AI output scoring in production | x-accel content score / publish gate code and example output |
| I use expert councils for judgment | Decision Council guide plus safe council artifact |
| I maintain durable operating memory | SloaneVault/qmd status, lessons, decision logs, project notes |
| I have measured and improved AI assistant usefulness | HeavisideOS Slack assistant eval benchmark |
| I understand current limits | Explicit HeavisideOS maturity note and failure modes above |
