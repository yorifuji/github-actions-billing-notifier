#!/usr/bin/env bash

set -eu

RESPONSE=$(gh api \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /orgs/yoricode/settings/billing/actions)

# echo $RESPONSE | jq

echo "total_minutes_used=$(echo ${RESPONSE} | jq .total_minutes_used)" >> "${GITHUB_OUTPUT}"
echo "total_paid_minutes_used=$(echo ${RESPONSE} | jq .total_paid_minutes_used)" >> "${GITHUB_OUTPUT}"
echo "included_minutes=$(echo ${RESPONSE} | jq .included_minutes)" >> "${GITHUB_OUTPUT}"
