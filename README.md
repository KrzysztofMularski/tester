# Tester

## Usage:
```
tester <PROGRAM> <PARAMETERS_FILE> <RESULTS_FILE> [--kv]
```

## Description:
Testing `PROGRAM` by executing all combinations of parameters from `PARAMETERS_FILE` and saving results in the `RESULTS_FILE` in .csv format. `PROGRAM` itself must write csv lines to stdin and tester will write it to `RESULTS_FILE`.

## Options:
`--kv`            ensure that parameters should be passed to program in `key=value` format instead of just `value`

## Examples:
```
tester local_search results.csv params_local_search.yml --kv
```
```
tester genetic results.csv params_genetic.yml
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

`param2` can be written in one line - concise notation:
```yml
param2: true
```

## Tester recursive
There is a possibility of calling `tester` on `tester` itself. It allows to execute groups of commands.
```
tester tester params_tester.yml results.csv
```
#### Parameters file consisting of names of other parameters files:
```
# params_tester.yml:
program:
- local_search
params:
- params_local_search1.yml
- params_local_search2.yml
- params_local_search3.yml
- params_local_search4.yml
results:
- results.csv
kv:
- --kv
```

It will execute sequentially following commands:
```
../local_search/local_search ./params_local_search1.yml ./results.csv --kv
../local_search/local_search ./params_local_search2.yml ./results.csv --kv
../local_search/local_search ./params_local_search3.yml ./results.csv --kv
../local_search/local_search ./params_local_search4.yml ./results.csv --kv
```
Just make sure to have all `./params_local_searchX.yml` files.
