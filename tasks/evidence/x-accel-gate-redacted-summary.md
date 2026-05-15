# x-accel Gate / Scoring - Redacted Summary

Draft status: optional evidence summary for `ops-coo-009`. Do not attach code excerpts that expose account IDs, user IDs, secrets, unpublished content, or private performance data.

## What This Proves

x-accel is a separate system from HeavisideOS. It is useful evidence for the pattern we want to transfer to Single Grain: AI-generated output should not publish or execute just because it exists. It should pass gates first.

## Source Records

| Evidence | Path | Shareability |
|---|---|---|
| Publish gate runtime | `/home/cvsloane/dev/x-accel/src/lib/publish-gate.ts` | Share summarized or code excerpt after checking for private identifiers. |
| Publish gate policy | `/home/cvsloane/dev/x-accel/src/lib/publish-gate-policy.ts` | Share summarized or code excerpt after checking for private identifiers. |
| MCP publish tool | `/home/cvsloane/dev/x-accel/src/mcp/tools/publish.ts` | Share summarized; do not expose account/user IDs. |

## Gate Behavior

`validateBeforePublish(...)` applies multiple checks before X content can publish:

1. Prompt/assistant artifact detector blocks visible prompt residue before any scoring call.
2. Banned-phrase filter checks account voice configuration before LLM scoring.
3. Adversarial fact-check independently verifies claims unless explicitly skipped.
4. LLM scoring runs with escalation and policy-profile thresholds.
5. `evaluatePublishScore(...)` blocks content below thresholds for truthfulness, algorithm fit, tone, safety, or custom policy checks.
6. MCP publish tools call the gate before `createPost(...)` or `createThread(...)`.
7. With `softFail: false`, scoring/fact-check failures block publishing instead of silently passing.

## Transfer To Single Grain

Use this as the model for Single Grain's score-to-route system:

- prompt artifact check -> block malformed outputs,
- source/fact check -> block unsupported claims,
- policy profile -> tune thresholds by agent/action type,
- pass/fail gate -> green/yellow/red route,
- publish/action tool -> only executes after gate passes,
- override path -> allowed only when operator explicitly accepts risk.

## Caveats

- x-accel is content/social specific; do not imply the same code directly handles agency operations.
- x-accel is not part of HeavisideOS.
- This is Tier 3 source-record proof unless paired with safe before/after performance data.

