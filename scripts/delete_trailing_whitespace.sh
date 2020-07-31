#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOT_DIR=${1:-"$SCRIPT_DIR/.."}

find $ROOT_DIR \( -name "*.[Chi]" -or -name "*.py" -or \( -name "contrib" -or -name "libmesh" \) -prune -and -type f \) -print0 | xargs -0 perl -pli -e "s/\s+$//"
