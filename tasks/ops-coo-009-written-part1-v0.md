# Ops COO 009 - Written Part 1 v0

Draft status: working draft for the written answer. Not final submission copy.

Number-source policy: challenge facts are labeled `[Observed from brief]`. Hour blocks, SLAs, and target queue counts are `[Assumed]` operating design.

## Part 1 - First 48 Hours `[Observed from brief]`

I do not start with stakeholder interviews. I start by turning the review backlog into a command queue, protecting revenue first, and reducing Eric's role to the few decisions that actually require CEO context.

### Priority Order

1. ClickFlow churn: 2 lost customers this month `[Observed from brief]` means active revenue and retention damage. This comes before backlog cleanup because delay compounds the trust problem.
2. Stale sales prospects: 3 prospects went cold `[Observed from brief]`; pipeline has a shorter recovery window than most internal review items.
3. Review queue: 23 pending items `[Observed from brief]`, some 4 days old `[Observed from brief]`, must be routed today, but age alone is not priority. Business risk, source confidence, reversibility, and owner clarity decide route.
4. Oracle quick wins: 15 unactioned keyword recommendations `[Observed from brief]` are not ignored, but they get source-checked before work is assigned.

### First 48-Hour Plan

| Time | Action | Output |
|---|---|---|
| Hour 0-1 `[Assumed]` | Freeze new auto-approvals except clearly reversible internal summaries. Snapshot Mission Control, Slack, CRM, ClickFlow churn flags, Oracle recs, and expired outreach. | One command queue with item, source, age, owner, revenue tie, reversibility, and proposed route. |
| Hour 1-2 `[Assumed]` | Run the 23 pending items `[Observed from brief]` through a rough source/value/risk pass. Do not solve everything yet. | Items marked `dead`, `needs_source_check`, `green_auto`, `yellow_owner`, `yellow_council`, or `red_eric`. |
| Hour 2-4 `[Assumed]` | Work ClickFlow churn first. Pull usage trend, last login, support history, last human touch, account value, renewal date, and original churn signal. | Save plan per churned account; Eric only sees it if pricing, refund, strategic relationship, or CEO call weight is needed. |
| Hour 4-5 `[Assumed]` | Work stale prospects. Check deal stage, source, last reply, relationship owner, trigger event, and whether follow-up is still appropriate. | Closer gets a re-entry note, or the prospect is marked dead with reason. Eric sees only named-account or personal-relationship cases. |
| Hour 5-7 `[Assumed]` | Clear the command queue by route, not by inbox order. Kill duplicates/stale noise, approve low-risk reversible work, assign yellow items to named owners, and pull 3-5 Eric decisions `[Observed from brief]`. | Review queue is no longer a blob; every item has a route and owner. |
| Hour 7-8 `[Assumed]` | Source-check a sample of Oracle's 15 quick wins `[Observed from brief]`: verify GSC/GA4 source, existing page fit, intent, effort, and revenue relevance. | Top 3-5 `[Assumed]` become SEO/content tasks; the rest wait for data or are rejected with reason. |
| Hour 8-24 `[Assumed]` | Close the first day with a short written brief: what was handled, what was killed, what is waiting on source data, what needs Eric, and what changes tomorrow. | Eric receives only exceptions. Shaun gets data/source questions. Sales/content owners get assigned actions. |
| Hour 24-24.5 `[Assumed]` | Use Eric's 30 minutes `[Observed from brief]` for decision-rights calibration, not discovery. | Red-line list, temporary delegation boundary, 3-5 red decisions `[Observed from brief]`, and tomorrow's CEO leverage metric. |
| Hour 24.5-26 `[Assumed]` | Meet Shaun on the tech layer: source systems, cron ownership, failure modes, where outputs land, and which agent outputs lack traceability. | Source-of-truth map and list of queue fields that must become mandatory. |
| Hour 26-32 `[Assumed]` | Follow through on customer and sales actions. Confirm churn next touches happened, prospect re-entry went out, green items executed, and yellow owners accepted responsibility. | Outcomes logged, not merely assigned. |
| Hour 32-40 `[Assumed]` | Convert the first day's routing into a v0 decision rule: what was green, what was yellow, what was red, what was killed, and why. | Initial risk-tier pattern library for Oracle, Flash, Cyborg, and Alfred. |
| Hour 40-48 `[Assumed]` | Second closeout. No unowned yellow/red items. Tomorrow's queue starts with only red decisions, source-check items, and owner-blocked items. | Eric's daily approval load moves toward 3-5 items `[Observed from brief]`, with everything else owned outside the CEO. |

### How I Triage Without Knowing The System

I do not ask, "Is this a good AI output?" first. I ask:

- Is the source data visible and current?
- Is there a direct revenue, churn, pipeline, or client-retention tie?
- Is the action reversible?
- Is there a named owner who can act today?
- Does this require Eric's relationship, pricing authority, public judgment, or strategic context?
- If we reject it, do we learn something useful enough to improve the next run?

That lets me operate before I fully trust the system. Unknown source quality moves an item to `needs_source_check`, not to Eric by default. High-value ambiguity moves to owner/council review. Only irreversible, strategic, public, pricing, or CEO-relationship decisions go to Eric.

### What I Need From Eric

I need 30 minutes `[Observed from brief]`, not an open-ended download:

- Confirm the 3 fires `[Observed from brief]`: churn, stale pipeline, queue routing.
- Name the red lines: pricing, named accounts, public claims, headcount, legal, client escalations, and any relationship-sensitive accounts.
- Define what I can decide without him for the next 7 days `[Assumed]`.
- Review only the 3-5 red decisions `[Observed from brief]` I bring him.
- Pick the one CEO leverage metric he wants in tomorrow morning's brief.

The win condition after 48 hours `[Observed from brief]`: churn and stale pipeline have human owners and next actions, the review queue has no anonymous work, Eric is no longer the default reviewer, and the system has started recording rejection/approval reasons so tomorrow's outputs are better than today's.
