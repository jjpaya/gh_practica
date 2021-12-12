#!/bin/bash

OUTCOME="$1"
LINK="https://img.shields.io/badge/test-failure-red"

if [[ $OUTCOME == success ]]; then
  LINK="https://img.shields.io/badge/tested%20with-Cypress-04C38E.svg"
fi

sed -i -E 's,^!\[cyp-badge\]\(.*\)$,!\[cyp-badge\]\('"$LINK"'\),g' README.md
