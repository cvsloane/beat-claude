# Ops COO 009 - Heaviside FTE / Revenue Per Employee Calculation

Status: working calculation for applicant positioning. Do not submit this raw file.

Date calculated: 2026-05-13.

## Sources Used

- Agency Financials live database via local env with `db-vps` resolved to documented Tailscale IP `100.82.152.103`.
- Native QuickBooks ProfitAndLoss snapshots synced through deployed Agency Financials on 2026-05-13:
  - `quickbooks_report_snapshots.raw_payload`
  - full-quarter snapshots from 2022 Q1 through 2026 Q1
  - 2026 Q2TD snapshot for 2026-04-01 through 2026-05-13
- QuickBooks transaction/account lines from Agency Financials for labor-to-FTE conversion:
  - `quickbooks_transactions`
  - `quickbooks_transaction_lines`
  - `quickbooks_accounts`
- SloaneVault payroll inventory: `/home/cvsloane/SloaneVault/10 - Business/12 - Areas/Heaviside Group/Payroll Inventory.md`.
- SloaneVault business continuity handoff: `/home/cvsloane/SloaneVault/10 - Business/13 - Resources/Business Continuity - Emergency Handoff.md`.
- Applicant-approved public annual revenue phrasing: roughly `$750K/year`.

## Revenue Inputs

| Revenue basis | Value | Notes |
|---|---:|---|
| Current active/payment-failed MRR annualized | `$656,808/year` | DB query: 42 active/payment-failed customers, `$54,734` current MRR as of 2026-05-13. |
| Paused/temporary MRR annualized | `$191,544/year` | DB query: 8 paused/temporary customers, `$15,962` MRR. Add back when treating paused accounts as recoverable revenue base. |
| Active/payment-failed plus paused/temporary MRR annualized | `$848,352/year` | DB query: 50 customers, `$70,696` MRR. This is the revised revenue base after adding paused MRR back in. |
| Last 90 days QB deposits annualized | `$702,742/year` | DB query through 2026-05-08. More consistent with applicant estimate, but QB deposits may include noisy line items. |
| Applicant-approved public estimate | `$750,000/year` | Best public positioning number; label estimated/applicant claim. |

Do not use the raw LTM QB deposits result (`$2.79M`) for public revenue-per-employee. It appears over-inclusive/noisy for this purpose.

For quarterly revenue and profit history, use the native QuickBooks P&L snapshots now stored in Agency Financials, not bank deposits and not a hand-built transaction-line P&L reconstruction.

## Labor / FTE Inputs

| FTE basis | Value | Notes |
|---|---:|---|
| Active payroll allocated hours | `268.22 hrs/week = 6.71 FTE` | Live DB active employees, current payroll info, divided by 40 hrs/week. |
| Latest 30-day Hubstaff actual time | `285.31 hrs/week = 7.13 FTE` | Hubstaff tracked time from 2026-04-09 through 2026-05-08. |
| Hubstaff actual time plus founder | `8.13 FTE` | Conservative public/comparability version if counting Chris as 1.0 FTE. |
| Active payroll allocation plus founder | `7.71 FTE` | Conservative alternative using payroll allocation rather than actual tracked time. |
| Older payroll inventory | `345 hrs/week = 8.63 FTE` | Feb 2026 vault inventory; live DB is more current and lower. |

## Payroll Spend To FTE Method

The current paid-team FTE denominator is observed directly from active payroll hours:

| Labor pool | People | Weekly hours | FTE | Monthly pay | Monthly cost / FTE |
|---|---:|---:|---:|---:|---:|
| Domestic US hourly | `4` | `86.215` | `2.155` | `$8,103.54` | `$3,759.69` |
| Foreign / non-US hourly | `7` | `182.000` | `4.550` | `$6,461.69` | `$1,420.15` |
| Total hourly paid team | `11` | `268.215` | `6.705` | `$14,565.23` | `$2,172.17` |

For historical quarters, payroll spend is converted into FTE-equivalent using those current cost/FTE benchmarks:

```text
Foreign FTE = quarterly foreign labor spend / ($1,420.15 * 3)
Domestic FTE = quarterly domestic labor spend / ($3,759.69 * 3)
Total FTE = foreign FTE + domestic FTE
Annualized revenue/FTE = quarterly corrected P&L revenue * 4 / total FTE
```

Labor accounts used:

| Pool | QuickBooks P&L accounts |
|---|---|
| Foreign / contractor labor | `Overhead Labor - Non-US Employees`, `COGS Labor - Non-US Employees`, `Subcontractors` |
| Domestic payroll labor | `Overhead Wages`, `COGS Wages`, `Overhead Payroll Expenses`, `Overhead Payroll Taxes` |

## Revenue Per FTE

| Basis | FTE | Active + paused MRR annualized | `$750K` estimate | Current active/payment-failed MRR annualized | Last-90-day QB annualized |
|---|---:|---:|---:|---:|---:|
| Hubstaff actual, excluding founder | `7.13` | `$119K/FTE` | `$105K/FTE` | `$92K/FTE` | `$99K/FTE` |
| Hubstaff actual, plus founder | `8.13` | `$104K/FTE` | `$92K/FTE` | `$81K/FTE` | `$86K/FTE` |
| Payroll allocation, excluding founder | `6.71` | `$126K/FTE` | `$112K/FTE` | `$98K/FTE` | `$105K/FTE` |
| Payroll allocation, plus founder | `7.71` | `$110K/FTE` | `$97K/FTE` | `$85K/FTE` | `$91K/FTE` |

## Recommended Public Claim

Use the revised current headline:

> Heaviside has about `$70.7K` in active/payment-failed plus paused/temporary MRR, or roughly `$848K` annualized `[Observed internal customer records]`. Against `6.71` paid-team FTE from current payroll allocation `[Observed internal payroll records]`, that is roughly `$126K revenue per paid-team FTE`.

Conservative version including Chris as 1.0 FTE:

> Including me as 1.0 FTE, the same base is `~7.71-8.13 FTE`, or roughly `$104K-$110K revenue per FTE` depending on whether payroll allocation or Hubstaff actual-time capacity is used.

## Historical RPE And Profitability - Native QuickBooks P&L Basis

This is the cleanest history after syncing native QuickBooks P&L reports for each quarter. Revenue and net income come from `quickbooks_report_snapshots.raw_payload`; FTE is estimated from QuickBooks labor spend using the current domestic/foreign labor-cost benchmarks above.

| Quarter | P&L revenue | Est. paid-team FTE | Annualized revenue/FTE | Net income | Net margin |
|---|---:|---:|---:|---:|---:|
| 2022 Q1 | `$115,491` | `11.55` | `$40,541` | `$-16,309` | `-14.1%` |
| 2022 Q2 | `$130,234` | `10.58` | `$49,376` | `$3,903` | `3.0%` |
| 2022 Q3 | `$184,585` | `14.37` | `$50,959` | `$22,012` | `11.9%` |
| 2022 Q4 | `$159,225` | `26.71` | `$23,652` | `$-5,758` | `-3.6%` |
| 2023 Q1 | `$204,883` | `18.46` | `$45,019` | `$-11,209` | `-5.5%` |
| 2023 Q2 | `$218,748` | `12.63` | `$69,448` | `$32,714` | `15.0%` |
| 2023 Q3 | `$204,181` | `16.29` | `$49,722` | `$-1,424` | `-0.7%` |
| 2023 Q4 | `$184,586` | `11.06` | `$66,240` | `$1,120` | `0.6%` |
| 2024 Q1 | `$207,960` | `10.28` | `$81,111` | `$46,772` | `22.5%` |
| 2024 Q2 | `$200,571` | `9.70` | `$82,973` | `$32,736` | `16.3%` |
| 2024 Q3 | `$214,438` | `11.43` | `$74,421` | `$39,704` | `18.5%` |
| 2024 Q4 | `$160,208` | `9.17` | `$69,342` | `$-8,024` | `-5.0%` |
| 2025 Q1 | `$143,044` | `7.95` | `$72,944` | `$-1,711` | `-1.2%` |
| 2025 Q2 | `$159,756` | `7.13` | `$89,832` | `$30,276` | `19.0%` |
| 2025 Q3 | `$168,403` | `6.57` | `$101,694` | `$25,957` | `15.4%` |
| 2025 Q4 | `$161,664` | `6.47` | `$99,102` | `$27,024` | `16.7%` |
| 2026 Q1 | `$185,710` | `6.27` | `$120,094` | `$31,712` | `17.1%` |
| 2026 Q2TD | `$77,928` | `7.61` | `$86,913` | `$1,136` | `1.5%` |

Year-level read:

| Year / period | P&L revenue | Avg FTE-equivalent | Revenue/FTE read | Net income | Net margin |
|---|---:|---:|---:|---:|---:|
| 2022 | `$589,535` | `15.80` | `$37,306/FTE` | `$3,848` | `0.7%` |
| 2023 | `$812,398` | `14.61` | `$55,606/FTE` | `$21,201` | `2.6%` |
| 2024 | `$783,177` | `10.15` | `$77,198/FTE` | `$111,188` | `14.2%` |
| 2025 | `$632,867` | `7.03` | `$90,024/FTE` | `$81,546` | `12.9%` |
| 2026 Q1 annualized | `$185,710` quarterly | `6.27` | `$120,094/FTE` | `$31,712` quarterly | `17.1%` |

The cleanest strategic read starts in 2024 because that is when the AI/system-integration work began to line up with the operating model. The FTE reduction should be framed as sensible simplification after overstaffing, not artificial shrinkage. The support for that claim is that margin improved at the same time:

| Period | Revenue/FTE | Net margin | Read |
|---|---:|---:|---|
| 2023 | `$55,606/FTE` | `2.6%` | Labor-heavy baseline. |
| 2024 | `$77,198/FTE` | `14.2%` | AI/systems integration and simplification begin showing up in the numbers. |
| 2025 | `$90,024/FTE` | `12.9%` | Efficiency holds with healthy profitability. |
| 2026 Q1 | `$120,094/FTE` | `17.1%` | Trajectory continues. |

The cleanest recent proof line is 2025 Q1 through 2026 Q1:

| Period | Annualized revenue/FTE | Net income | Net margin |
|---|---:|---:|---:|
| 2025 Q1 | `$72,944` | `$-1,711` | `-1.2%` |
| 2025 Q2 | `$89,832` | `$30,276` | `19.0%` |
| 2025 Q3 | `$101,694` | `$25,957` | `15.4%` |
| 2025 Q4 | `$99,102` | `$27,024` | `16.7%` |
| 2026 Q1 | `$120,094` | `$31,712` | `17.1%` |

This shows the core GM-role pattern: higher revenue per employee and sustained positive profitability at the same time.

Do not overuse 2026 Q2TD. It is included for freshness, but partial-quarter P&L timing is lumpy.

## Interpretation

The data supports the claim that Heaviside was previously around `~$40K-$60K revenue/FTE` in the older labor-heavy operating model and is now roughly `~$120K-$126K revenue/FTE`, depending on whether the Q1 2026 P&L method or current active-plus-paused annualized MRR method is used.

This is not yet Single Grain's target of `$300K-$400K revenue/employee`, but the direction is exactly the JD thesis:

- fewer labor hours for the same or larger revenue base;
- more work handled by software/CLI/intelligence-layer workflows;
- better revenue per employee before adding headcount;
- profitability improving alongside revenue efficiency rather than being sacrificed for efficiency optics.
- FTE reduction coming from simplification and overstaffing correction, not from starving the business.

## How To Use In The Submission

Do not present this as a brag that Heaviside is already near Single Grain's `$300K-$400K` revenue-per-employee target. It is not.

Use it as the honest setup for the transformation story:

- Chris knows the labor math from his own agency.
- Heaviside's current RPE is not yet high enough for the Single Grain target, but it has materially improved from the old `~$50K-$60K/FTE` range.
- That is exactly why he has spent the last 2 years re-engineering Heaviside, PVM, and GDM around an intelligence layer, automation, CLI-driven workflows, HG Market Report, HG SEO Commander, SloaneVault, and HeavisideOS.
- The point is not "my agency is already at Single Grain's target"; the point is "I understand the metric and am already doing the work required to move it."

## Suggested Packet Language

> Heaviside has roughly `$848K` in annualized active-plus-paused MRR against `6.71` paid-team FTE `[Observed internal customer/payroll records]`, or about `$126K revenue per paid-team FTE`. The native QuickBooks P&L history shows the same direction. Starting in 2024, as AI and systems work began showing up in the operating model, revenue/FTE moved from `$55.6K` in 2023 to `$77.2K` in 2024 and `$90.0K` in 2025, while net margin moved from `2.6%` to `14.2%` and then held at `12.9%` `[Observed QuickBooks P&L; FTE estimated from current labor-cost benchmarks]`. Q1 2026 continued the trajectory at about `$120K` annualized revenue/FTE and `17.1%` net margin. That was not artificial shrinkage; it was sensible simplification after overstaffing, paired with automation and better systems. That is the operating problem I have been working on directly: moving the labor math without breaking profitability.

Forward-looking version:

> The systems now in place, plus the ones currently in progress, should allow me to double or even triple current revenue/FTE without materially increasing headcount `[Projected operating thesis]`. The next step is not just a more efficient agency. It is a service-as-software layer -- PavingOS and related vertical systems -- that turns repeatable agency workflows into software-supported revenue. The goal is to grow that software-enabled layer quickly as a percentage of total revenue, so future growth comes less from adding operators and more from productized systems.
