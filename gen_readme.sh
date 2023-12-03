#!/usr/bin/env bash
set -euo pipefail

gen() {
  echo -e "# Ensrick Portraits \n"
  echo -e "Provided both a zip for ease of use plus a weidu mod.\n"
  echo -e "\n## Portraits"

  for portrait in $(find ensrick_portraits/portraits/ -type f | sed 's/..BMP//' | sort | uniq); do
    shortname=$(echo "${portrait}" | awk -F '/' '{print $3}')
    echo -e "\n### ${shortname}\n"
    echo -e "![${shortname}](${portrait}"L.BMP")\n"
  done
}

main() {
  rm -f README.md
  gen > README.md
}

main
