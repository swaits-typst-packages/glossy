#!/usr/bin/env bash

watchexec \
  --watch . \
  --clear \
  --ignore 'tests/**/diff/**' \
  --ignore 'tests/**/out/**' \
  "tt run --no-fail-fast"
