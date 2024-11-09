#!/bin/bash

entry="${1}"
code="${2}"
output_type="${3}"

temp=$(pwd)

cd "${entry}" || exit $?

dot -T"${output_type}" "./${code}" -o "${code}.${output_type}"

cd $temp