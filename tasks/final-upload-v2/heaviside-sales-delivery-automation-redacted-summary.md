# Heaviside Sales / Delivery Automation - Redacted Summary

This is a redacted evidence summary for `ops-coo-009`. It supports the operating-edge claim that Chris has built software systems that remove manual sales and delivery work inside his own agency companies.

Do not attach raw customer reports, customer screenshots, live production admin pages, API keys, `.env` files, or private client examples.

## What This Proves

The role is looking for a builder of operational leverage, not a traditional agency coordinator. These systems show that pattern:

- turn manual report/deck work into generated customer-facing artifacts,
- turn delivery tasks into queueable/reviewable workflows,
- keep humans on review, judgment, customer communication, and exceptions,
- move repeatable work into software, CLI, queues, and integrations.

## Artifact 1: HG Market Report

### What It Is

HG Market Report is a local-business market intelligence platform. The repo supports SEO audits, SERP analysis, local geogrid visibility, competitor analysis, review monitoring, AI visibility, Google Ads analysis, lead scoring, email campaigns, and a white-label lead capture widget.

The most relevant workflow is the lead/report/presentation path: the widget captures business and Google Business Profile context, AI-generates keywords and service area, creates lead and business records, queues SEO audit / SERP / geogrid reports, triggers derived lost-revenue / quick-win / competitor views, creates a public presentation URL, tracks presentation views, and sends a report-ready email.

### Source Records

| Evidence | Source reference | Shareability |
|---|---|---|
| Product repo | `hg-market-report` repository | Summarize only unless code excerpts are reviewed for private identifiers. |
| Project note | SloaneVault `HG Market Report` project note | Summarize only. |
| Production surface | `hgmarketreport.com` | Public surface can be named; do not expose private admin/customer data. |
| Repo README / docs | README, `docs/embed/README.md`, `docs/reports/report-architecture.md`, presentation routes, worker/runbook docs | Safe to summarize after redacting env examples and private deployment details. |

### Operating Claim Supported

Repo-supported claim: HG Market Report replaces the manual prospect-audit loop with a software path from captured business context to queued reports, derived analysis, public presentation URL, and report-ready email.

Applicant estimate: it conservatively saves `1-2` hours per standard sales audit `[Estimated applicant claim]` by removing manual source pulling, local search checks, screenshot/report assembly, presentation creation, and first delivery. More complex multi-report audits may save more, but the public claim should stay at `1-2` hours unless backed by time logs.

### Proof Tier Read

- Product/repo/source records: Tier 3 if source records are reviewed live.
- Demo artifact: Tier 2 if a redacted report or Loom walkthrough is attached.
- Time-savings estimate: Tier 0-2 unless backed by task logs or before/after timestamps.

## Artifact 2: HG SEO Commander

### What It Is

HG SEO Commander is a multi-tenant local SEO automation platform. It integrates GA4, Google Search Console, Google Business Profile, SERP/geogrid tracking, citation monitoring, AI content generation, queue workers, scheduled syncs, CLI tools, and operator-review workflows.

The most relevant workflow is monthly SEO delivery: routine data pulls, rank/local visibility checks, citation context, Google Business Profile posts, content generation, scheduled sync, queue handling, and admin/CLI recovery are moved into software. Strategy, customer judgment, and quality review remain human.

### Source Records

| Evidence | Source reference | Shareability |
|---|---|---|
| Product repo | `hg-seo-commander` repository | Summarize only unless code excerpts are reviewed for private identifiers. |
| Project note | SloaneVault `HG SEO Commander` project note | Summarize only. |
| Production surface | `hgseocommander.com` | Public surface can be named; do not expose private admin/customer data. |
| Repo README / docs | README, CLI docs, GBP implementation assessment, scheduled-sync notes, API docs, queue docs | Safe to summarize after redacting env examples, customer IDs, and account IDs. |

### Operating Claim Supported

Repo-supported claim: HG SEO Commander automates large parts of the recurring SEO operating workflow across GA4, Search Console, Google Business Profile, SERP/geogrid, citations, AI articles, GBP posts, bulk-posting approvals, scheduled syncs, BullMQ queues, and CLI/admin tools.

Applicant estimate: it conservatively removes `3-4` hours per active SEO client per month `[Estimated applicant claim]` from routine data pulls, status checks, report assembly, GBP/content prep, and queue recovery. The stronger proof is not the exact hours yet; it is that the platform has a real production architecture for delivery work: Google integrations, queue workers, approval flow, CLI operations, content generation, publishing controls, and recoverability.

### Proof Tier Read

- Product/repo/source records: Tier 3 if source records are reviewed live.
- Demo artifact: Tier 2 if a redacted walkthrough or sanitized screen capture is attached.
- Time-savings estimate: Tier 0-2 unless backed by time logs.

## How To Use In The Submission

Do not overload the main written answer. Use this as backup for the Operating Edge section:

> I have built a lot of internal tools; two clean examples are HG Market Report and HG SEO Commander. HG Market Report turns a prospect audit into a workflow: captured business context, queued reports, derived analysis, public presentation URL, and report-ready delivery. HG SEO Commander does the same thing on recurring SEO delivery across analytics, search visibility, GBP, citations, content, queues, and CLI/admin recovery. The important point is not that the tools are perfect. It is that I repeatedly move agency work from manual coordination into source-backed, reviewable software workflows.

## Caveats

- Do not claim these two tools are the only systems Chris has built.
- Do not claim exact time savings as observed unless backed by time logs.
- Do not expose customer reports, customer names, account IDs, API keys, OAuth credentials, or raw admin screens externally.
- Frame HG SEO Commander as real delivery automation while still distinguishing it from early-stage HeavisideOS.
