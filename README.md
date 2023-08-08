# Tester

## Usage:
```
tester <PROGRAM> <PARAMETERS_FILE> <RESULTS_FILE> [--kv]
```

## Description:
Testing `PROGRAM` by executing all combinations of parameters from `PARAMETERS_FILE` and saving results in the `RESULTS_FILE` in .csv format. `PROGRAM` itself must write csv lines to stdin and tester will write it to `RESULTS_FILE`.

## Options:
Parameter|Description
---|---
`--kv`            |ensure that parameters should be passed to program in `key=value` format instead of just `value`
`--preview`       |show list of commands that would be run with no '--preview' option provided
`--id=ID`         |from which command (combination) should start (call --preview to make sure which command has which number)

## Examples:
```
tester local_search params_local_search.yml results.csv --kv
```
```
tester genetic params_genetic.yml results.csv
```

## Parameters file:
Parameters are written in .yml format:

`param1` can have single or multiple options:
```yml
param1:
  - 0.1
  - 0.3
  - 0.5
```

`param2` can be written in one line (when only one option present) - concise notation:
```yml
param2: true
```
