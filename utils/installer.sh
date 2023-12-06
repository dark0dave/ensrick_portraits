#!/usr/bin/env bash
set -euo pipefail

# BG1
for portrait in $(ls ensrick_portraits/companions/bg1/*L.BMP | sed 's/..BMP//'); do
  shortname=$(echo "${portrait}" | awk -F '/' '{print $4}')
  echo -e "ACTION_IF NOT FILE_EXISTS ~override/${shortname}~ BEGIN"
  echo -e "  COPY ~%MOD_FOLDER%/compainions/bg1/${shortname}L.BMP~ ~override~"
  echo -e "  COPY ~%MOD_FOLDER%/compainions/bg1/${shortname}M.BMP~ ~override~"
    echo -e "  COPY ~%MOD_FOLDER%/compainions/bg1/${shortname}S.BMP~ ~override~"
  echo -e "END"
done
for portrait in $(ls ensrick_portraits/companions/both/*L.BMP | sed 's/..BMP//'); do
  shortname=$(echo "${portrait}" | awk -F '/' '{print $4}')
  echo -e "ACTION_IF NOT FILE_EXISTS ~override/${shortname}~ BEGIN"
  echo -e "  COPY ~%MOD_FOLDER%/compainions/both/${shortname}L.BMP~ ~override~"
  echo -e "  COPY ~%MOD_FOLDER%/compainions/both/${shortname}M.BMP~ ~override~"
    echo -e "  COPY ~%MOD_FOLDER%/compainions/both/${shortname}S.BMP~ ~override~"
  echo -e "END"
done

# BG2
for portrait in $(ls ensrick_portraits/companions/bg2/*L.BMP | sed 's/..BMP//'); do
  shortname=$(echo "${portrait}" | awk -F '/' '{print $4}')
  echo -e "ACTION_IF NOT FILE_EXISTS ~override/${shortname}~ BEGIN"
  echo -e "  COPY ~%MOD_FOLDER%/compainions/bg2/${shortname}L.BMP~ ~override~"
  echo -e "  COPY ~%MOD_FOLDER%/compainions/bg2/${shortname}M.BMP~ ~override~"
    echo -e "  COPY ~%MOD_FOLDER%/compainions/bg2/${shortname}S.BMP~ ~override~"
  echo -e "END"
done
for portrait in $(ls ensrick_portraits/companions/both/*L.BMP | sed 's/..BMP//'); do
  shortname=$(echo "${portrait}" | awk -F '/' '{print $4}')
  echo -e "ACTION_IF NOT FILE_EXISTS ~override/${shortname}~ BEGIN"
  echo -e "  COPY ~%MOD_FOLDER%/compainions/both/${shortname}L.BMP~ ~override~"
  echo -e "  COPY ~%MOD_FOLDER%/compainions/both/${shortname}M.BMP~ ~override~"
    echo -e "  COPY ~%MOD_FOLDER%/compainions/both/${shortname}S.BMP~ ~override~"
  echo -e "END"
done
