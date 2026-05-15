#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

APPROVED_DEFAULTS=0
CHECK_ROLE_ONLY=0
PREFLIGHT=0
STATUS_ONLY=0
ROLE_URL="https://careers.singlegrain.com/jobs/567472-general-manager-agency"

for arg in "$@"; do
  case "$arg" in
    --approved-defaults)
      APPROVED_DEFAULTS=1
      ;;
    --role-rechecked)
      # Backward-compatible no-op. The script performs the live role check itself.
      ;;
    --check-role-only)
      CHECK_ROLE_ONLY=1
      ;;
    --preflight)
      PREFLIGHT=1
      ;;
    --status)
      STATUS_ONLY=1
      ;;
    -h|--help)
      cat <<'EOF'
Usage:
  bash tasks/ops-coo-009-assemble-approved-defaults.sh --approved-defaults
  bash tasks/ops-coo-009-assemble-approved-defaults.sh --check-role-only
  bash tasks/ops-coo-009-assemble-approved-defaults.sh --preflight
  bash tasks/ops-coo-009-assemble-approved-defaults.sh --status

This creates tasks/final-upload-defaults/ from the approved default packet.

Use --preflight before approval to run the live role check, PDF export, and QA
without assembling the upload directory.

Use --status to verify ready source files and the existing PDF page count, then
print approval state and expected upload files without running network checks or
creating the upload directory.

Do not run with approval flags unless:
  1. Chris approved the default operational-experience and MMPI text.
  2. Chris confirmed LinkedIn URL: https://www.linkedin.com/in/christophersloane/
  3. Default shareability is accepted: attach HeavisideOS summary, summarize other proof artifacts.
  4. You are ready for the script to recheck the live GM posting and assemble the bundle.
EOF
      exit 0
      ;;
    *)
      echo "Unknown argument: $arg" >&2
      exit 2
      ;;
  esac
done

MODE_COUNT=$((APPROVED_DEFAULTS + CHECK_ROLE_ONLY + PREFLIGHT + STATUS_ONLY))
if (( MODE_COUNT > 1 )); then
  echo "NO-GO: choose only one mode: --approved-defaults, --check-role-only, --preflight, or --status." >&2
  exit 2
fi

check_live_role() {
  local html
  html="$(curl -L -s "$ROLE_URL")"
  if [[ -z "$html" ]]; then
    echo "NO-GO: live GM posting check returned empty content." >&2
    return 1
  fi

  local missing=0
  local required=(
    "General Manager (Agency)"
    "Remote"
    "Fully Remote"
    '$185,000 - $225,000 DOE'
    "ops-coo-009"
  )

  for needle in "${required[@]}"; do
    if ! grep -Fq "$needle" <<<"$html"; then
      echo "NO-GO: live GM posting missing expected text: $needle" >&2
      missing=1
    fi
  done

  if [[ "$missing" -ne 0 ]]; then
    return 1
  fi

  echo 'PASS: live GM posting still shows General Manager (Agency), Remote/Fully Remote, $185,000 - $225,000 DOE, and ops-coo-009.'
}

if [[ "$CHECK_ROLE_ONLY" -eq 1 ]]; then
  check_live_role
  exit $?
fi

write_approved_evidence_log() {
  local target="$1"
  sed \
    -e 's/Public-source candidate URL; final submission requires applicant confirmation./Confirmed by applicant for final submission./' \
    -e 's/Candidate public-source value; use the applicant-confirmed URL in the application./Confirmed by applicant for final submission./' \
    -e 's/Personal claim; final submission requires applicant approval./Confirmed by applicant for final submission./' \
    -e 's/Personal claim; include only after applicant approval or replace with edited version./Confirmed by applicant for final submission./' \
    -e 's/Personal assessment; final submission requires applicant approval./Confirmed by applicant for final submission./' \
    -e 's/Personal assessment; include only after applicant approval or replace with edited version./Confirmed by applicant for final submission./' \
    tasks/ops-coo-009-evidence-log-final-defaults.md > "$target"
}

write_candidate_profile() {
  local target="$1"
  cat > "$target" <<'EOF'
# Candidate Profile Addendum

LinkedIn profile URL: https://www.linkedin.com/in/christophersloane/

## MMPI-Style Self-Assessment

I am high-drive, systems-first, and comfortable with ambiguity. The strength is that I turn messy work into gates, owners, source records, and repeatable loops. The risk is overbuilding or pushing process faster than a team can adopt it. I compensate with lightweight routing: green executes, yellow gets owner/council review, red goes to the CEO.

EOF
}

write_live_role_check() {
  local target="$1"
  local role_check_output="$2"
  {
    printf '# Live GM Posting Check\n\n'
    printf 'Checked URL: %s\n\n' "$ROLE_URL"
    printf 'Result:\n\n'
    printf '%s\n' "$role_check_output"
  } > "$target"
}

write_manifest() {
  local target="$1"
  cat > "$target" <<'EOF'
# Ops COO 009 - Final Upload Manifest

Approval basis:

- Applicant approved defaults.
- Public LinkedIn URL confirmed: https://www.linkedin.com/in/christophersloane/
- Default shareability accepted: attach HeavisideOS eval summary; summarize x-accel, SloaneVault, and decision-council proof in the evidence log only.
- GM posting rechecked automatically by the assembly script immediately before bundle creation.

Upload set:

1. `written-answer.pdf` - preferred upload for the 2-page written answer.
2. `written-answer.md` - Markdown source copy of the written answer.
3. `operating-artifact.md`
4. `evidence-log.md`
5. `ai-usage-disclosure.md`
6. `heavisideos-slack-eval-redacted-summary.md`
7. `candidate-profile.md`
8. `live-role-check.md`

Do not upload:

- Raw HeavisideOS eval reports.
- Raw SloaneVault notes.
- Raw CRM, Slack, GHL, ad account, or client/customer screenshots.
- Internal review files, completion audits, source drafts, or Beat-Claude comparison notes.
EOF
}

expected_upload_files() {
  printf '%s\n' \
    "MANIFEST.md" \
    "ai-usage-disclosure.md" \
    "candidate-profile.md" \
    "evidence-log.md" \
    "heavisideos-slack-eval-redacted-summary.md" \
    "live-role-check.md" \
    "operating-artifact.md" \
    "written-answer.md" \
    "written-answer.pdf"
}

ready_source_files() {
  printf '%s\n' \
    "tasks/ops-coo-009-final-written-defaults.md" \
    "tasks/ops-coo-009-operating-artifact-final.md" \
    "tasks/ops-coo-009-evidence-log-final-defaults.md" \
    "tasks/ops-coo-009-ai-disclosure-final.md" \
    "tasks/evidence/heavisideos-slack-eval-redacted-summary.md" \
    "tasks/exports/ops-coo-009-final-written-defaults-compact.pdf"
}

verify_ready_source_files() {
  local missing=0
  while IFS= read -r file; do
    if [[ ! -s "$file" ]]; then
      echo "MISSING_OR_EMPTY: $file"
      missing=1
    else
      echo "PASS: $file"
    fi
  done < <(ready_source_files)

  if [[ "$missing" -ne 0 ]]; then
    return 1
  fi
}

verify_written_answer_fit() {
  local written="tasks/ops-coo-009-final-written-defaults.md"
  local pdf="tasks/exports/ops-coo-009-final-written-defaults-compact.pdf"
  local words
  local pages

  words="$(wc -w < "$written" | tr -d ' ')"
  echo "Written answer word count: $words"

  if ! command -v pdfinfo >/dev/null 2>&1; then
    echo "WARN: pdfinfo not available; status cannot verify PDF page count."
    return 0
  fi

  pages="$(pdfinfo "$pdf" | awk '/^Pages:/ {print $2}')"
  if [[ -z "$pages" ]]; then
    echo "NO-GO: could not read page count from $pdf."
    return 1
  fi

  echo "Compact PDF page count: $pages"
  if (( pages > 2 )); then
    echo "NO-GO: compact PDF exceeds the 2-page cap."
    return 1
  fi

  echo "PASS: compact PDF fits the 2-page cap."
}

verify_upload_file_set() {
  local dir="$1"
  local expected
  local actual

  expected="$(expected_upload_files | sort)"
  actual="$(find "$dir" -maxdepth 1 -type f -printf '%f\n' | sort)"

  if [[ "$actual" != "$expected" ]]; then
    echo "FAIL: upload directory file set differs from expected files." >&2
    diff -u <(printf '%s\n' "$expected") <(printf '%s\n' "$actual") || true
    exit 1
  fi

  while IFS= read -r file; do
    if [[ ! -s "$dir/$file" ]]; then
      echo "FAIL: expected upload file is missing or empty: $file" >&2
      exit 1
    fi
  done < <(expected_upload_files)

  echo "PASS: upload directory contains exactly the expected non-empty files."
}

print_status() {
  echo "== Ops COO 009 Assembly Status =="
  echo "Ready source files:"
  if ! verify_ready_source_files; then
    echo
    echo "NO-GO: one or more source files are missing or empty."
    return 1
  fi
  verify_written_answer_fit
  echo
  echo "Approved bundle will contain:"
  expected_upload_files | sort
  echo
  if [[ -d tasks/final-upload-defaults ]]; then
    echo "Current upload directory: present"
  else
    echo "Current upload directory: absent"
  fi
  echo
  echo "Blocked until applicant approval of:"
  echo "- operational-experience claims"
  echo "- MMPI-style self-assessment"
  echo "- LinkedIn URL: https://www.linkedin.com/in/christophersloane/"
  echo "- default shareability choices"
  echo
  echo "Fast path: reply 'approve defaults', then run:"
  echo "bash tasks/ops-coo-009-assemble-approved-defaults.sh --approved-defaults"
  echo
  echo "Partial edit path:"
  echo "approve defaults except:"
  echo "1. Operational experience: <replacement or \"no change\">"
  echo "2. MMPI: <replacement or \"no change\">"
  echo "3. LinkedIn: <replacement or \"no change\">"
  echo "4. Shareability: <replacement or \"no change\">"
}

scan_upload_dir() {
  local dir="$1"

  echo "== Upload Directory Packaging Scan =="
  verify_upload_file_set "$dir"
  echo
  expected_upload_files | sort
  echo

  if rg -n "Candidate pending|TBD|Requires Chris|Blocked|not submission-ready|Do not submit|Draft status|requires applicant|candidate URL|Personal claim; final submission|Personal assessment; final submission" "$dir"; then
    echo
    echo "FAIL: unresolved candidate/blocker language found in upload directory."
    exit 1
  fi
  echo "PASS: no unresolved candidate/blocker language in upload directory."

  if rg -n "/home/|/Users/|C:\\\\Users|/dev/" "$dir"; then
    echo
    echo "FAIL: local filesystem paths found in upload directory."
    exit 1
  fi
  echo "PASS: no local filesystem paths in upload directory."

  if rg -n "secret|token|password|Bearer|Authorization|raw report|customer names|Slack message text|private client|@[A-Za-z0-9._%+-]+\\.[A-Za-z]{2,}|\\+[0-9][0-9() .-]{7,}" "$dir"; then
    echo
    echo "WARN: sensitive-info terms found in upload directory. Redaction warnings may be OK; actual secrets/client data are not."
  else
    echo "PASS: no sensitive-info terms found in upload directory."
  fi
}

if [[ "$STATUS_ONLY" -eq 1 ]]; then
  print_status
  exit 0
fi

run_preflight() {
  local role_check_output
  role_check_output="$(check_live_role)"
  echo "$role_check_output"

  bash tasks/ops-coo-009-export-written-pdf.sh tasks/ops-coo-009-final-written-defaults.md >/dev/null

  local tmp_dir
  tmp_dir="$(mktemp -d)"
  cp tasks/ops-coo-009-final-written-defaults.md "$tmp_dir/written-answer.md"
  cp tasks/ops-coo-009-operating-artifact-final.md "$tmp_dir/operating-artifact.md"
  write_approved_evidence_log "$tmp_dir/evidence-log.md"
  cp tasks/ops-coo-009-ai-disclosure-final.md "$tmp_dir/ai-usage-disclosure.md"
  cp tasks/evidence/heavisideos-slack-eval-redacted-summary.md "$tmp_dir/heavisideos-slack-eval-redacted-summary.md"
  cp tasks/exports/ops-coo-009-final-written-defaults-compact.pdf "$tmp_dir/written-answer.pdf"
  write_candidate_profile "$tmp_dir/candidate-profile.md"
  write_live_role_check "$tmp_dir/live-role-check.md" "$role_check_output"
  write_manifest "$tmp_dir/MANIFEST.md"

  bash tasks/ops-coo-009-qa-check.sh \
    "$tmp_dir/written-answer.md" \
    "$tmp_dir/operating-artifact.md" \
    "$tmp_dir/evidence-log.md" \
    "$tmp_dir/ai-usage-disclosure.md" \
    "$tmp_dir/heavisideos-slack-eval-redacted-summary.md" \
    "$tmp_dir/candidate-profile.md"

  scan_upload_dir "$tmp_dir"

  rm -rf "$tmp_dir"

  echo "Preflight passed. No upload directory was assembled."
}

if [[ "$PREFLIGHT" -eq 1 ]]; then
  run_preflight
  exit $?
fi

if [[ "$APPROVED_DEFAULTS" -ne 1 ]]; then
  echo "NO-GO: final assembly requires --approved-defaults." >&2
  echo "Use only after Chris approval; the script will perform a fresh live GM posting check." >&2
  exit 2
fi

ROLE_CHECK_OUTPUT="$(check_live_role)"
echo "$ROLE_CHECK_OUTPUT"

OUT_DIR="tasks/final-upload-defaults"
rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

cp tasks/ops-coo-009-final-written-defaults.md "$OUT_DIR/written-answer.md"
cp tasks/ops-coo-009-operating-artifact-final.md "$OUT_DIR/operating-artifact.md"
write_approved_evidence_log "$OUT_DIR/evidence-log.md"
cp tasks/ops-coo-009-ai-disclosure-final.md "$OUT_DIR/ai-usage-disclosure.md"
cp tasks/evidence/heavisideos-slack-eval-redacted-summary.md "$OUT_DIR/heavisideos-slack-eval-redacted-summary.md"
write_candidate_profile "$OUT_DIR/candidate-profile.md"

bash tasks/ops-coo-009-export-written-pdf.sh tasks/ops-coo-009-final-written-defaults.md >/dev/null
cp tasks/exports/ops-coo-009-final-written-defaults-compact.pdf "$OUT_DIR/written-answer.pdf"

write_live_role_check "$OUT_DIR/live-role-check.md" "$ROLE_CHECK_OUTPUT"

bash tasks/ops-coo-009-qa-check.sh \
  "$OUT_DIR/written-answer.md" \
  "$OUT_DIR/operating-artifact.md" \
  "$OUT_DIR/evidence-log.md" \
  "$OUT_DIR/ai-usage-disclosure.md" \
  "$OUT_DIR/heavisideos-slack-eval-redacted-summary.md" \
  "$OUT_DIR/candidate-profile.md"

write_manifest "$OUT_DIR/MANIFEST.md"

scan_upload_dir "$OUT_DIR"

echo "Final upload bundle assembled at $OUT_DIR"
