#!/bin/bash

declare -A queries=(
  ["films"]="https://fragments.dbpedia.org/2016-04/en"
  ["isocodes"]="https://labs.tib.eu/sdm/worldbank_endpoint/sparql https://query.wikidata.org/sparql"
)

declare -A templates=(
  ["results"]=""
  ["logical"]="--explain logical"
  ["physical"]="--explain physical"
)

comunica="node node_modules/.bin/comunica-sparql"

for query in "${!queries[@]}"
do
  for template in "${!templates[@]}"
  do
    full_command="$comunica ${queries[$query]} --file queries/$query.rq ${templates[$template]} > output/$query-$template.json"
    echo "Execute: $full_command"
    bash -c "$full_command"
  done
done
