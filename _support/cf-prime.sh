#!/usr/bin/env bash

(
  echo https://kube.wang/
  (
    git ls-files \
      | grep -E '\.md$' \
      | grep -v -E 'CONTRIBUTING|README|Readme' \
      | grep -v -E '^_' \
      | sort \
      | uniq \
      | sed 's/\.md$//g'
  ) \
    | sed 's#^#https://kube.wang/#g'
) \
  | xargs curl >/dev/null
