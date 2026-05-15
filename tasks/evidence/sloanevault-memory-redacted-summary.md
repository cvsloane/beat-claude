# SloaneVault Memory Layer - Redacted Summary

Draft status: optional evidence summary for `ops-coo-009`. Do not attach raw vault pages that contain private client, finance, personal, health, legal, or secret material.

## What This Proves

SloaneVault is the durable memory/source-record layer behind the submission. It is the closest current proof of a "company brain" pattern: project notes, lessons, source captures, decisions, runbooks, evidence logs, and retrieval through qmd.

## Source Records

| Evidence | Path / command | Shareability |
|---|---|---|
| Vault root | `/home/cvsloane/SloaneVault/` | Do not share raw; summarize structure. |
| Project note | `/home/cvsloane/SloaneVault/20 - Development/21 - Projects/beat-claude.md` | Share only if sanitized. |
| Local lessons | `tasks/lessons.md` | Safe if project-local context is acceptable. |
| qmd status | `/home/cvsloane/bin/qmd status` | Safe as aggregate stats. |

## Current qmd Status

Checked on 2026-05-13:

| Metric | Value |
|---|---:|
| Indexed documents | 4,749 `[Observed qmd status]` |
| Embedded vectors | 43,117 `[Observed qmd status]` |
| Pending documents needing embedding | 1,358 `[Observed qmd status]` |
| Index size | 312.6 MB `[Observed qmd status]` |
| Index updated | 13h ago `[Observed qmd status]` |

## Transfer To Single Grain

Use this as the memory layer pattern:

- every executed/rejected AI output creates a source-linked decision record,
- repeated failures become lessons/rules,
- project notes preserve state across sessions,
- source records separate observed facts from assumptions,
- retrieval gives agents context without relying on one person's memory.

## Caveats

- SloaneVault is mature as a memory/source-record layer, not a direct clone of Single Brain.
- qmd status shows a real pending-embedding backlog; retrieval is useful but not perfect.
- The vault contains sensitive material and should be summarized, not shared raw.

