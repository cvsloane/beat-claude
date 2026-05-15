# Public Numbers / Operating Evidence Plan

Status: implemented as a site-native `/numbers` page in `/home/cvsloane/dev/csloane.com-950`; old `/proof` and `/operating-leverage` routes now redirect to `/numbers`.

## Context

The public site should back up the GM application with more context than the 4-page challenge packet can hold. It should read as a natural part of `csloane.com`, not as a Single Grain microsite or a challenge-specific proof page. The chosen public route is `/numbers`, because that is clearer and less weird than `/proof` or `/operating-leverage`.

The first pass failed the voice bar badly enough that Chris rewrote the entire site. That is now treated as a process failure: future public copy for this project must pass a dedicated human-copywriting gate before it is saved, shipped, or presented for approval.

## Objective

Create a public page on `csloane.com` that works as supporting evidence for the GM application without mentioning Single Grain, Eric, or the COO challenge.

The page should show:

- Chris builds agency operating leverage, not generic automation.
- Heaviside has improved revenue/FTE and net margin without artificial shrinkage.
- The agency runs with less than 5 hours/week of founder management because talent, ownership, and systems are working.
- HG Market Report and HG SEO Commander are concrete examples of sales and delivery workflows being turned into software-backed operating systems.
- Hermes/open-agents, SloaneVault, x-accel-style gates, decision councils, and HeavisideOS are part of a broader company-brain direction.
- Judgment stays human; systems remove repetitive retrieval, assembly, routing, scoring, and follow-up work.

## Page Requirements

- No challenge-specific language.
- No private client data, raw P&L, raw QuickBooks exports, internal Slack, CRM screenshots, or unreconciled metrics.
- Claims must be tied to repo-supported capabilities, documented estimates, or redacted summaries.
- Public workflow claims should use conservative replaced-step estimates.
- Internal tool names are acceptable only when explained in plain language first.
- The copy must sound like Chris: direct, concrete, skeptical of hype, and short enough that a busy operator would keep reading.

## Recommended Structure

1. Short lead: what Chris builds and why it matters.
2. The operating leverage thesis: revenue/FTE, margin, founder leverage, and talent.
3. Sales workflow proof: HG Market Report.
4. Delivery workflow proof: HG SEO Commander.
5. Agent/output-to-outcome proof: Hermes/open-agents and 80+ cron/scheduler operating experience.
6. Memory and judgment layer: SloaneVault, decision councils, x-accel-style scoring, HeavisideOS.
7. Operating principles: kill low-signal automation, avoid capability sprawl, keep humans on judgment.
8. Redacted proof caveat: what is public, what is private, and why.

## Quality Gate

Before further page edits:

1. Create and deploy a shared `human-copywriting` skill across Codex and Claude Code.
2. Run the page through its scoring gate.
3. Revise until it passes:
   - Voice/authenticity: 8.5+/10
   - Clarity: 9+/10
   - Specificity/proof: 8+/10
   - Anti-AI/corporate-speak: 8.5+/10
   - Brevity/rhythm: 8.5+/10
   - Audience fit: 8.5+/10
4. Only then return the page for approval.

## Implementation Update

- Public route: `https://csloane.com/numbers`
- Legacy redirects: `/proof` -> `/numbers`; `/operating-leverage` -> `/numbers`
- Navigation: "Numbers" added to the main site nav.
- Sitemap: emits `/numbers`, not `/proof`.
- First deployment: commit `2b88eb5` pushed to `main` and deployed through Coolify deployment `hfbnmn6xfq0iukse91dowz8u`.
- Expansion deployment: commit `8234cdc` pushed to `main` and deployed through Coolify deployment `iog6d3qb5d8724am3gtgps5j`.
- Expanded shape: `/numbers` is now a public evidence hub with source labels and links to `/operator-brief`, `/businesses`, `/systems/heavisideos`, `/systems/hg-market-report-software`, `/systems/hg-seo-commander`, `/systems/agent-commander`, `/systems/x-accel`, and the ML case-study pages.
- Copy gate: full rendered live page copy now passes the `human-copywriting` mechanical scorer at `10.0/10` after commit `97d22c0` (`copy: tighten numbers page voice`) and Coolify deployment `y49evagejr01fieqebpmv353`. This supersedes the earlier representative-sample score.
- Live verification: `https://csloane.com/numbers` returns `200`; `/proof` and `/operating-leverage` return `308` to `/numbers`; sitemap advertises `/numbers`; live desktop and 390px mobile Chromium renders produced valid screenshots.
