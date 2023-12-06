#!/usr/bin/env bash
set -euo pipefail

normalizer() {
  cp ${1} resize.bmp
  mv ${1} backup.bmp
  trap "mv backup.bmp ${1}" EXIT
  ffmpeg -i resize.bmp -vf scale=210:330 ${1}
  rm resize.bmp
}

normalizer $@
