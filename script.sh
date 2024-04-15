#!/bin/bash

set -e

GIT_SHA="$1"
LENGTH="$2"

SHORT_SHA=$(echo "${GIT_SHA}" | cut -c1-"$LENGTH")

if [ -z "$CI" ]; then
    echo "sha=${SHORT_SHA}" # test only
else
    echo "sha=${SHORT_SHA}" >> "$GITHUB_OUTPUT"
fi

exit 0
