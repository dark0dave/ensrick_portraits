#!/usr/bin/env bash
set -euo pipefail

validate() {
  ffprobe -hide_banner $1
}

validate $1
