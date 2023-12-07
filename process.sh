#!/usr/bin/env bash
set -euo pipefail

convert() {
  mogrify -format bmp ${1}
}

sizer() {
  ffmpeg -i ${1}L.BMP -vf scale=110:170 ${1}M.BMP
  ffmpeg -i ${1}L.BMP -vf scale=38:60 ${1}S.BMP
}

main() {
    convert $1
    base_name=${1: 0:-4}
    echo "${base_name}"
    read -ep "Give images a name: " newname
    mv "${base_name}".bmp "${newname}"L.BMP
    sizer $newname >/dev/null
    mv "${newname}"* ensrick_portraits/protagonist/.
}

main $1
