#!/usr/bin/env bash
set -euo pipefail

gen() {
  echo -e "# Ensrick Portraits \n"
  echo -e "Provided both a zip for ease of use plus a weidu mod.\n"
  echo -e "## Overwrite table\n"
  echo -e "- [table](https://baldursgate.fandom.com/wiki/Portrait_File_Names)"
  echo -e "- [replace](https://baldursgate.fandom.com/wiki/Portraits#Adding_Custom_Portraits)"
  echo -e "\n## Portraits"

  for portrait in $(find ensrick_portraits/companions/ -type f | sed 's/..BMP//' | sort | uniq); do
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
