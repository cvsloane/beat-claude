# Ops COO 009 - Written Part 3 v0

Draft status: working source draft for the written answer. Not final submission copy.

Number-source policy: challenge facts are labeled `[Observed from brief]`. Proposed score weights, thresholds, and operating changes are `[Assumed]` v0 rules.

## Part 3 - Elon Algorithm Cron Audit

After 30 days `[Observed from brief]`, I would audit the 48 crons `[Observed from brief]` by asking one question first: does this cron create accepted work, or does it create review debt?

I would score each cron on eight factors `[Assumed]`:

- Action rate: does anyone act on the output?
- Revenue proximity: does the action touch pipeline, retention, margin, or customer value?
- Review burden: does it create human work faster than the team can absorb it?
- Source quality: can the system show the data behind the recommendation?
- Owner clarity: is there a named person who can execute?
- False-positive cost: what happens if we act on noise?
- False-negative cost: what happens if we miss a true signal?
- Memory feedback: does the cron learn from accepted/rejected work?

My default is not "keep because it works sometimes." My default is eliminate, simplify, or tighten until the cron produces fewer outputs and more accepted work.

| Cron | Verdict | Reasoning | 30-day change `[Assumed]` |
|---|---|---|---|
| GSC Quick Win Scan | Improve | 12% actioned `[Observed from brief]` is too noisy, but the job is close to revenue and compounding SEO value. The problem is filtering, not the category. | Only surface 3-5 items `[Assumed]` with verified GSC/GA4 data, existing page fit, conversion intent, clear owner, and <2h effort `[Assumed]`. Rejected recs become prompt/filter examples. |
| LinkedIn Prospect Sourcer | Improve | 8% converted to meetings `[Observed from brief]` suggests the ICP/trigger filter is too loose. Pipeline matters, but 2x/day `[Observed from brief]` can flood review and create mediocre personalization. | Batch once daily `[Assumed]`, require ICP + trigger + relationship score, and cap to owner capacity. Measure meetings and accepted prospects, not profiles generated. |
| Content Repurpose - YouTube | Keep/improve | 35% published `[Observed from brief]` is not a failure; editorial rejection is part of quality control. This is a good candidate for memory: winners should train future hooks. | Keep, but log why pieces were published or rejected. Feed hook/format winners into memory and demote patterns that repeatedly miss. |
| Deal Revival Scan | Keep | 60% followed up `[Observed from brief]` is strong because it is low-volume, tied to pipeline, and naturally owner-driven. | Keep. Require follow-up outcome logging so it optimizes for reopened conversations or pipeline, not just "follow-up sent." |
| Competitor Pricing Monitor | Kill/pause | 3% led to action `[Observed from brief]`; daily pricing noise is a bad trade unless there is a specific strategic trigger. False positives waste executive attention and can pull the company into reactive pricing. | Pause daily cron. Replace with monthly/quarterly `[Assumed]` manual review or exception-based alert for material competitor changes. |
| Churn Signal Detector | Improve urgently | 20% investigated `[Observed from brief]` is operationally dangerous because false negatives are expensive. The cron may be valuable; the response loop is broken. | Same-day `[Assumed]` yellow escalation with owner, source links, customer state, and save-play status. Track investigated rate, save attempts, and churn prevented. |
| Weekly Content Calendar | Keep/improve | 50% used `[Observed from brief]` is useful if it drives accepted content decisions. It should not create a 15-post backlog `[Observed from brief]` that becomes guilt and noise. | Keep, but reduce to the top opportunities `[Assumed]`, attach source signals, and track publish/outcome by topic and format. |
| Candidate Outreach Follow-up | Kill/redesign | 5% response `[Observed from brief]` plus automated follow-up creates brand and candidate-experience risk. Robotic persistence is not the same as recruiting leverage. | Kill automatic re-engagement. Replace with weekly top-5 `[Assumed]` human review for high-fit candidates only. |

Net on the sample: keep/improve 6 `[Assumed verdict]` and kill/pause 2 `[Assumed verdict]` across the 8-cron sample `[Observed from brief]`. Across all 48 crons `[Observed from brief]`, I would expect to remove or redesign any cron that lacks a clear owner, source record, or outcome metric. The objective is not fewer crons for its own sake; it is fewer unowned outputs, fewer stale queues, and more accepted work per agent run.
