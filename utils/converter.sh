#!/usr/bin/env bash
set -euo pipefail

convert() {
  mogrify -format bmp ${1}
}

convert $@
