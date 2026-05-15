#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

FINAL_WRITTEN="${1:-tasks/ops-coo-009-final-written-defaults.md}"
ARTIFACT="${2:-tasks/ops-coo-009-operating-artifact-final.md}"
EVIDENCE_LOG="${3:-tasks/ops-coo-009-evidence-log-final-defaults.md}"
AI_DISCLOSURE="${4:-tasks/ops-coo-009-ai-disclosure-final.md}"
PRIMARY_PROOF="${5:-tasks/evidence/heavisideos-slack-eval-redacted-summary.md}"
PROFILE="${6:-}"

QA_FILES=("$FINAL_WRITTEN" "$ARTIFACT" "$EVIDENCE_LOG" "$AI_DISCLOSURE" "$PRIMARY_PROOF")
SECTION_FILES=("$FINAL_WRITTEN" "$ARTIFACT" "$EVIDENCE_LOG" "$AI_DISCLOSURE")
if [[ -n "$PROFILE" ]]; then
  QA_FILES+=("$PROFILE")
  SECTION_FILES+=("$PROFILE")
fi

echo "== Ops COO 009 QA Check =="
echo "Final written: $FINAL_WRITTEN"
echo "Artifact:      $ARTIFACT"
echo "Evidence log:  $EVIDENCE_LOG"
echo "AI disclosure: $AI_DISCLOSURE"
echo "Proof summary: $PRIMARY_PROOF"
if [[ -n "$PROFILE" ]]; then
  echo "Profile:       $PROFILE"
fi
echo

missing=0
for file in "${QA_FILES[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "MISSING: $file"
    missing=1
  fi
done
if [[ "$missing" -ne 0 ]]; then
  echo
  echo "Create the missing final files before running QA."
  exit 2
fi

echo "== Word Count =="
wc -w "$FINAL_WRITTEN" "$AI_DISCLOSURE"
echo

echo "== Candidate / Blocker Language =="
if rg -n "Candidate pending|TBD|Requires Chris|Blocked|not submission-ready|Do not submit|Draft status|requires applicant|candidate URL|Personal claim; final submission|Personal assessment; final submission" \
  "${QA_FILES[@]}"; then
  echo
  echo "FAIL: unresolved candidate/blocker language found in final files."
  exit 1
else
  echo "PASS: no unresolved candidate/blocker language found."
fi
echo

echo "== Substantive Number Scan =="
rg -n "[0-9]" "$FINAL_WRITTEN" "$ARTIFACT" || true
echo
echo "Review every substantive number above for [Observed], [Estimated], [Benchmarked], or [Assumed]."
echo "Ignore headings, file names, product names, and list numbering."
echo

echo "== Sensitive-Info Scan =="
if rg -n "secret|token|password|Bearer|Authorization|raw report|customer names|Slack message text|private client|@[A-Za-z0-9._%+-]+\\.[A-Za-z]{2,}|\\+[0-9][0-9() .-]{7,}" \
  "${QA_FILES[@]}"; then
  echo
  echo "WARN: sensitive-info terms found. Warnings about redaction may be OK; actual secrets/client data are not."
else
  echo "PASS: no sensitive-info terms found."
fi
echo

echo "== Local Path Scan =="
if rg -n "/home/|/Users/|C:\\\\Users|/dev/" \
  "${QA_FILES[@]}"; then
  echo
  echo "FAIL: local filesystem paths found in final upload files."
  exit 1
else
  echo "PASS: no local filesystem paths found in final upload files."
fi
echo

echo "== Required Sections =="
required_patterns=(
  "What stays human"
  "What Breaks"
  "AI Usage"
  "Evidence"
  "MMPI"
  "LinkedIn"
)
for pattern in "${required_patterns[@]}"; do
  if rg -qi "$pattern" "${SECTION_FILES[@]}"; then
    echo "PASS: $pattern"
  else
    echo "MISSING: $pattern"
    missing=1
  fi
done

if [[ "$missing" -ne 0 ]]; then
  echo
  echo "FAIL: required section check failed."
  exit 1
fi

echo
echo "QA helper completed. Remaining checks: applicant approval, final assembly live GM posting check, and final attachment shareability."
echo "Rerun page-fit export if the final written answer changed."
