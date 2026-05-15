# Ops COO 009 - Written Part 2 v0

Draft status: working source draft for the written answer. Not final submission copy.

Number-source policy: challenge facts are labeled `[Observed from brief]`. Proposed scores, thresholds, SLAs, and review cadences are `[Assumed]` v0 operating rules.

## Part 2 - Risk Tiering System

The goal is not to make Eric approve faster. The goal is to stop sending him decisions that do not require CEO judgment.

Single Brain has 48 crons `[Observed from brief]`, 50+ daily messages `[Observed from brief]`, and 15+ daily review items `[Observed from brief]`. I would put every output through one score-to-route gate before it reaches a human. The gate separates action value from risk so a high-value output does not accidentally become auto-approved when it carries customer, brand, pricing, legal, or strategic risk.

### The Gate

Each output gets two passes `[Assumed]`:

1. **Action value score** `[Assumed]`: revenue proximity, time sensitivity, source confidence, owner clarity, effort size, and learning value. Each field is scored 0/1/2 `[Assumed]`, with a max score of 12 `[Assumed]`.
2. **Risk flags** `[Assumed]`: irreversible customer commitment, strategic relationship, public/brand risk, legal/privacy/security risk, high financial exposure, novelty, and low source confidence.

Then it routes:

| Route | Criteria | What happens |
|---|---|---|
| Green | Value >= 7 `[Assumed]`, source verified, reversible, known pattern, no red flags | Auto-execute or schedule; log in daily summary. |
| Yellow owner | Value >= 5 `[Assumed]` or some uncertainty, but no CEO-specific red flag | Domain owner or GM reviews within 4 business hours `[Assumed]`; outcome logged. |
| Yellow council | High-value ambiguity where expert judgment matters | Run a short expert-lens council; GM decides; result becomes a memory record. |
| Red Eric | Any irreversible, strategic, pricing, public, legal, high-financial, named-account, or CEO-relationship risk | Goes into Eric's 3-5 item daily queue `[Observed from brief]`. |
| Kill/defer | Value < 5 `[Assumed]` and no time-sensitive downside | Reject with reason so the system learns. |

### What Auto-Executes

Green does not mean "AI can do whatever it wants." Green means low-risk, reversible, source-verified, and already inside an approved pattern.

Examples:

- Oracle: existing-page title/internal-link quick win where GSC/GA4 source data is verified, the page already exists, the change is reversible, and the recommendation does not make a public strategic claim.
- Flash: repurposing already-approved video into a template-matched internal draft, LinkedIn post, newsletter snippet, or clip package that stays inside approved brand rules.
- Cyborg: follow-up inside an already-approved sequence for a non-strategic candidate or prospect, with no pricing/offer change and no Eric relationship.
- Alfred: internal briefing, status summary, owner reminder, or queue routing note with source links.

Green risk tolerance: a green mistake should be reversible, low-blast-radius, and teach the system something. If the mistake would require Eric to repair trust, renegotiate money, or explain a public claim, it was never green.

### What Goes Yellow

Yellow is where the GM earns leverage. These are not Eric decisions, but they are not unattended automations either.

Examples:

- Oracle recommends a new page, material rewrite, or mixed-intent keyword where business value is plausible but source/intent confidence is not high enough.
- Flash writes a strong POV, mentions competitors, changes positioning, or uses an unfamiliar hook pattern.
- Cyborg finds a high-fit prospect or candidate outside the normal ICP, or drafts personalization based on sensitive context.
- Alfred flags churn, deal revival, or a new workflow proposal that needs an owner and judgment before action.

Yellow owner review is for normal domain judgment. Yellow council is for high-value ambiguity: creative refreshes, paid-media strategy shifts, content/SEO positioning, or situations where an expert lens can improve the decision without creating another standing meeting. Councils are a judgment tool, not a review queue for daily noise.

### What Goes Red

Red is Eric's queue. It should be short and uncomfortable to ignore.

Examples:

- Pricing, discounts, refunds, contracts, or custom deal structures.
- Strategic account communication, enterprise logos, partner relationships, or accounts where Eric has context no agent can infer.
- Public claims involving customers, public figures, competitors, partners, or contentious market positions.
- Legal, privacy, security, or sensitive customer-data decisions.
- Hiring/firing, senior candidate persuasion, or compensation exceptions.
- New crons, killing core crons, or priority tradeoffs that change the operating model.

This is how Eric's review load moves from 15+ daily items `[Observed from brief]` to 3-5 real decisions `[Observed from brief]`.

### Decision Tree

```text
New agent output
  -> Is the source record visible and current?
       no  -> needs_source_check
       yes -> Does it have a red flag?
                yes -> red_eric, unless it is clearly owner-level yellow
                no  -> Is it reversible and inside an approved pattern?
                         no  -> yellow_owner or yellow_council
                         yes -> Is value >= 7 [Assumed]?
                                  yes -> green_auto
                                  no  -> Is value >= 5 [Assumed]?
                                           yes -> yellow_owner
                                           no  -> kill/defer
```

The exact thresholds are `[Assumed]`; I would tune them after one week `[Assumed]` by comparing accepted work, reversals, owner escalations, and missed opportunities.

### Mistake Handling

When a green item should not have auto-executed:

1. Reverse it if reversible.
2. Notify the affected owner with 3 lines `[Assumed]`: what happened, current customer/business risk, correction.
3. Move that item type from green to yellow until reviewed.
4. Add a memory record: source, failed rule, why the gate was wrong, and new threshold.
5. Review the category weekly `[Assumed]`. Two repeated failures `[Assumed]` means the rule is wrong, not that the team needs more reminders.

The important part is that mistakes do not become folklore. They become routing rules, prompt changes, source requirements, or kill criteria.
