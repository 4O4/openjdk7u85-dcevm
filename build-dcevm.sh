#!/usr/bin/env bash

readonly PROGNAME=$(basename $0)
readonly PROGDIR=$(readlink -m $(dirname $0))
readonly ARGS="$@"

${PROGDIR}/build-dcevm-light.sh
${PROGDIR}/build-dcevm-full.sh