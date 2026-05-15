# Meta Ads Operating Proof

This is the paid-media example behind the application answer and revised challenge response.

## External-facing summary

Use this publicly:

> With AI-assisted creative production and agent monitoring, I moved from testing one or two active winners at a time to a roughly 20-ad bench. That is about a `15x` increase in live testing volume. Cost per booked call fell from about `$770` in the old lead-form era to about `$165` after the AI workflow was in place. Later new ad cohorts came in at `$111-$142`.

Do not copy the account labels, CRM implementation details, or raw source rows below into the public application packet. They are review-only backup for a live walkthrough.

## What changed

The old way to read Meta performance was too easy to fool. Meta leads, pixel events, and dashboard columns could look useful while sales truth said something else.

The operating rule changed to:

- direct Meta API reads for spend, delivery, clicks, LPV, leads, and pixel events
- direct GHL calendar/contact attribution for schedule truth
- source-truth reconciliation when Meta, GHL, and warehouse views disagreed
- kill/keep/scale gates based on schedules, sales quality, and downstream proof
- council review for ambiguous cuts, budget moves, and creative direction

## Evidence

| Window | Source read | What it showed | Operating decision |
|---|---|---|---|
| Feb-Sep 2025 baseline | Meta Ads Manager/API, schedule estimates | Lead forms produced cheap raw leads: `$25.50` average CPL, about `3%` schedule rate, and about `$770` average cost per schedule. | Do not optimize to raw lead cost; low-friction forms can create poor booked-call economics. |
| Nov-Dec 2025 market-report baseline | Meta Ads Manager/API, GHL calendars/contact records | The landing-page market-report funnel produced about `$132` CPS on one brand and `$169` CPS on the other, about `$148` blended. December was driven by one dominant ad per brand. | The offer and funnel worked, but the system was too dependent on narrow winners. |
| Dec 2025 -> Jan 2026 | GHL form submissions, GHL calendars, Meta Ads Manager/API | Lead volume increased, but verified lead-to-schedule conversion fell: GDM down `50%`, PVM down `66%`. | Do not trust lead volume alone; investigate source truth and lead quality. |
| Jan 2026 monthly | Meta/GHL monthly report | PVM/GDM spent `$6,193.35`, produced `82` Meta leads and `64` GHL schedules in the monthly report; deeper audit showed schedule quality and attribution issues. | Keep using Meta/GHL, but separate surface lead volume from qualified schedule/sale truth. |
| Feb 2026 monthly | Meta/GHL monthly report | Combined spend was `$9,390.37`, producing `154` Meta leads, `82` GHL schedules, `$60.98` CPL, and `$114.52` CPS. | Creative volume and monitoring improved surface economics, but downstream quality still had to govern spend. |
| Feb 20-Mar 6 2026 | Meta Ads API, GHL CRM, creative library/refresh plan | The account had a broader active roster and verified `114` Meta leads / `29` GHL-confirmed FB schedules on `$4,773.95` spend, about `$41.88` CPL and `$164.97` CPS. | Judge performance from CRM-confirmed schedules, not pixel schedules; keep expanding creative only when downstream proof holds. |
| Mar 8-18 2026 | Live Meta API, GHL calendars/contacts, production warehouse | GDM was healthy at `$87.46` current-FB CPS; PVM was weak at `$259.79`; new creative cohorts produced `8` schedules at `$141.67` CPS, and post-rebalance `6` schedules at `$111.05` CPS. | Rebalance, kill weak PVM spend, keep GDM winners, and build replacements from proven angles. |
| Apr 22 2026 | Direct Meta + direct GHL council review | PVM had only `1` direct-GHL schedule on `$1,136.73`; GDM had `3` FB-attributed GHL schedules on `$1,136.45`, with expensive deadweight ads. | Pause five waste ads, hold budgets flat, and activate replacement creatives. |
| Apr 26 2026 | Combined Claude/Codex review with direct-source standard | Meta `Schedule` columns were not decision-grade after Apr 12 because the server-side schedule sync was stale. GHL remained schedule truth. | Do not scale or cut from broken reporting columns; repair attribution and use GHL as governing source. |

## Why this matters for Single Grain

This maps closely to Karrot, ClickFlow, and agency/TES operations. The GM cannot let AI-generated ads, landing pages, SEO recommendations, or agent outputs be judged by surface activity alone.

The useful loop is:

1. Source data.
2. Decision gate.
3. Owner action.
4. Outcome log.
5. Memory update.
6. Kill, keep, improve, or scale.

That is the same loop the challenge is asking for with Oracle, Flash, Cyborg, Alfred, and the 48 crons.

## Boundaries

These are internal operating reports, not public client screenshots. Raw account records, client identities, CRM records, and ad-account exports stay private unless reviewed live.
