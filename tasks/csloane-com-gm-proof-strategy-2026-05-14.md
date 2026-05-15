# csloane.com GM Proof Strategy

Status: superseded by the site-native `/numbers` implementation in `/home/cvsloane/dev/csloane.com-950`; old `/proof` and `/operating-leverage` routes redirect to `/numbers`.

## Question

Should `csloane.com` be used as supporting evidence for the Single Grain GM / `ops-coo-009` application, possibly by publishing more detailed artifacts or coverage there?

## Current Site Read

`csloane.com` is already useful public proof:

- Home page positioning: "I build revenue systems that work -- strategy, software, and the data to prove it."
- About page: founder story, `2011` Heaviside start, systems-over-heroics philosophy, revenue-aware engineering, measurement/accountability, and 8 active businesses / 50+ sites.
- Projects page: live platforms, open source, and current case studies.
- Business page: portfolio of Heaviside brands plus shared platform layer.
- Public platform links: Agent Commander, Agency Commander, HG Content, HG SEO Commander, HG Market Report.

The gap: the site does not yet tell the specific GM/operator story from the application: revenue/FTE improvement, agency leverage, AI-enabled workflows, accepted-work feedback loops, and founder leverage.

## Strategic Use

Use the personal site as an extended public proof layer, not as the primary submission.

The Beat Claude packet still needs to stand alone because reviewers may not click external links. `csloane.com` should support the packet by making the broader operating proof inspectable, public, and less cramped than the two-page answer.

## Best Public Additions

### 1. Site-Native Numbers Page

Recommended route: `/numbers`.

Purpose: one public page that gives a recruiter or founder the longer version of the GM story without exposing raw financials or private client data.

Recommended sections:

- "What I build": agency operating leverage, not generic automation.
- Revenue/FTE and margin story with annualized, redacted figures only.
- Talent/founder leverage: agency runs with minimal day-to-day founder intervention because Chris hires competent operators, gives ownership, avoids micromanagement, and steps in where judgment or performance requires it.
- Sales automation: HG Market Report replacing manual prospect-audit work with captured business/GBP context, queued reports, derived analysis, public presentation URL, and report-ready email.
- Delivery automation: HG SEO Commander moving recurring SEO data pulls, reporting, GBP/content prep, queue handling, and admin recovery into source-backed workflows while keeping strategy and QA human.
- AI operations layer: SloaneVault, x-accel scoring/gates, decision councils, Hermes/open-agents, HeavisideOS, with maturity labels.
- Operating lessons: adoption, anti-sprawl, source checks, accepted work, kill/pause rules.
- What is not public: raw P&L, raw client data, customer screenshots, private Slack/CRM data.

### 2. Detailed Case Studies

Add `2-3` public case studies rather than publishing the full Beat Claude answer:

1. **Agency Operating Leverage**
   - Problem: agency work was too manual and labor-dependent.
   - Approach: simplify overstaffed processes, build source-backed workflows, track revenue/FTE and margin.
   - Result: nearly doubled revenue/FTE over the recent period while net margin improved.
   - Caveat: redacted annual data; not a public audit.

2. **Sales Report Automation**
   - Problem: prospect audits required manual source pulls, local search checks, screenshots, and presentation assembly.
   - Approach: HG Market Report captures business/GBP context, generates keywords/service area, queues SEO audit/SERP/geogrid reports, derives lost-revenue/quick-win/competitor views, creates a public presentation URL, and sends the report-ready email.
   - Result: conservative estimate of `1-2` hours saved per standard sales audit; complex audits may save more.
   - Caveat: time savings are replaced-step estimates unless backed later by time logs.

3. **SEO Delivery Automation**
   - Problem: monthly SEO delivery depended on manual pulls across GA4, Search Console, Google Business Profile, rankings, geogrid, citations, content, and queue/admin recovery.
   - Approach: HG SEO Commander integrates those sources with scheduled syncs, BullMQ queues, AI articles, GBP posts, bulk posting approvals, and CLI/admin tools.
   - Result: conservative estimate of `3-4` hours saved per active SEO client per month on routine work.
   - Caveat: strategy and quality review stay human; time savings are replaced-step estimates unless backed later by time logs.

### 3. Optional AI Operations Stack Page

Only add this if the `/numbers` page becomes too dense.

Recommended route: a site-native route such as `/systems/ai-operations-stack` or a field note. Do not use a `/proof/...` route.

Use plain-language names first, internal tool names second:

- Memory layer: SloaneVault.
- Scoring/gate layer: x-accel pattern.
- Judgment layer: decision councils.
- Scheduler/agent layer: Hermes/open-agents.
- Company-brain layer: HeavisideOS, honestly labeled as early in practical adoption.

## What Not To Publish

- Do not publish the exact `ops-coo-009` answer as a public page before applying.
- Do not publish the Eric dossier, internal X analysis, or challenge-specific strategy notes.
- Do not publish raw QuickBooks/P&L exports.
- Do not publish private client names, Slack messages, CRM screenshots, support logs, raw eval reports, or scheduler metadata.
- Do not turn the site into a Single Grain-targeted microsite. It should read like durable operator proof.

## Suggested Submission Integration

If public pages are added, use them lightly:

- Candidate profile or cover letter: use `https://csloane.com/numbers` only as optional public context.
- Evidence log: add links as public supporting context, not as sole proof.
- Attachment map: keep public links as optional context.

Do not depend on external links for required scoring evidence. The application packet should still include the written answer, operating artifact, evidence log, and redacted summaries.

## Implementation Shape

Local repo: `/home/cvsloane/dev/csloane.com`.

The site is a Next app with data-driven case studies in `src/data/caseStudies.ts` and routes under `src/app`.

2026-05-14 implementation update:

- Added `/numbers` in `/home/cvsloane/dev/csloane.com-950/src/app/numbers/page.tsx`.
- Changed the main navigation and homepage CTA from "Proof" to "Numbers."
- Changed `/proof` and `/operating-leverage` into permanent redirects to `/numbers`.
- Updated sitemap to emit `/numbers`, not `/proof`.
- Kept the page site-native: no Single Grain references, no challenge-specific language, no raw client data.
- Verified with `npm run lint`, `npm run build`, local route checks, redirect checks, sitemap check, and desktop/mobile Chromium renders.
- Deployed commit `2b88eb5` through Coolify deployment `hfbnmn6xfq0iukse91dowz8u`; live checks passed for `/numbers`, `/proof`, `/operating-leverage`, and `sitemap.xml`.
- Expanded `/numbers` in commit `8234cdc` so it is no longer just a metric list. It now maps the public claims to related internal site pages: operator brief, business portfolio, HeavisideOS, HG Market Report, HG SEO Commander, Agent Commander, x-accel, and ML case studies.
- Verified the expanded page with `npm run lint`, `npm run build`, linked-route checks, legacy redirect checks, sitemap check, `human-copywriting` gate (`9.8/10` on the public prose sample), and live desktop/mobile Chromium renders after Coolify deployment `iog6d3qb5d8724am3gtgps5j`.
- Correction after review: the representative prose sample was not enough. Commit `97d22c0` tightened the actual page copy, and the full live rendered `/numbers` page now passes the `human-copywriting` mechanical scorer at `10.0/10`. Deployed through Coolify deployment `y49evagejr01fieqebpmv353`.

## Recommendation

Yes, use `csloane.com`, but keep it natural. The current public link should be `https://csloane.com/numbers`.

Do not depend on the external link for required scoring evidence. The packet still needs the written answer, operating artifact, evidence log, and redacted summaries.
