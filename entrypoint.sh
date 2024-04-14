#!/bin/sh -l

SHORT_SHA=$(echo "${GITHUB_SHA}" | cut -c1-7)

# Write outputs to the $GITHUB_OUTPUT file
echo "sha=${SHORT_SHA}" >> "$GITHUB_OUTPUT"

exit 0
