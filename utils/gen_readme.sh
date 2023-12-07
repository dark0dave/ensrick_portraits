#!/usr/bin/env bash
set -euo pipefail

gen_compainions() {
  echo -e "# Ensrick Portraits \n"
  echo -e "Provided both a zip for ease of use plus a weidu mod.\n"
  echo -e "## Overwrite table\n"
  echo -e "- [table](https://baldursgate.fandom.com/wiki/Portrait_File_Names)"
  echo -e "- [replace](https://baldursgate.fandom.com/wiki/Portraits#Adding_Custom_Portraits)"
  echo -e "\n## Companion Portraits"

  for portrait in $(ls ensrick_portraits/companions/**/*L.BMP | sed 's/..BMP//' ); do
    shortname=$(echo "${portrait}" | awk -F '/' '{print $4}')
    echo -e "\n### ${shortname}\n"
    echo -e "![${shortname}](${portrait}"L.BMP")\n"
  done
}

gen_protagonist() {
  echo -e "\n## Protagonist Portraits\n"
  for portrait in $(ls ensrick_portraits/protagonist/*L.BMP | sed 's/..BMP//'); do
    shortname=$(echo "${portrait}" | awk -F '/' '{print $3}')
    echo -e "\n### ${shortname}\n"
    echo -e "![${shortname}](${portrait}"L.BMP")\n"
  done
}

main() {
  rm -f README.md
  gen_compainions > README.md
  gen_protagonist >> README.md
}

main
