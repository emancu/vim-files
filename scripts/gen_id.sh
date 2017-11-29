#!/usr/bin/env bash

PACKAGE=$1

if [[ -n "${PACKAGE}" ]]; then
  pattern='/(\(primitive\|struct\|interface\|class\|actor\|trait\|type\)\W/'
  ponyc --pass=syntax --ast "${PACKAGE}" 2>&1 |
  sed -n "${pattern},+1 p" |
  grep -o '(id [A-Z]\w*' |
  cut -d ' ' -f 2 |
  sort -u
else
  echo "List type IDs used in a package."
  echo
  echo "Usage: $0 <package directory>"
fi
