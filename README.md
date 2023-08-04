# Tester

## Usage:
tester <PROGRAM> <PARAMETERS_FILE> <RESULTS_FILE> [--kv]

## Description:
Testing PROGRAM by executing all combinations of parameters from PARAMETERS_FILE and saving results in the RESULTS_FILE in .csv format. Program itself must write csv lines to stdin and tester will write it to RESULTS_FILE.

## Options:
--kv            ensure that parameters should be passed to program in 'key=value' format instead of just 'value'

## Examples:
tester local_search results.csv params_local_search.yml --kv
tester genetic results.csv params_genetic.yml
