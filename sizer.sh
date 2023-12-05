#!/usr/bin/env bash
set -euo pipefail

convert() {
  mogrify -format bmp ${1}
}

sizer() {
  ffmpeg -i ${1}L.BMP -vf scale=110:170 ${1}M.BMP
  ffmpeg -i ${1}L.BMP -vf scale=38:60 ${1}S.BMP
}

sizer $@
