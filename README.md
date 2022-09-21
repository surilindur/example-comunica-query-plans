# Random Query Stuff

The items here are just query-related things for sharing, nothing useful. There are two queries from the Google Docs meeting notes in the queries directory, and a script to run them in the scripts directory. The output goes into output directory. Please be wary when running the bash script, because it is likely completely insecure, it is written very hastily and the only requirement was that it sort of works.

* `*-results.json` contain raw results, as would be printed in termial otherwise
* `*-logical.json` contains the logical query plan
* `*-physical.json` contains the physical query plan

To install the dependencies from `package.json` (only Comunica at the moment) and to run the bash script:

```
yarn install --frozen-lockfile
yarn run explain
```

Please feel free to report any issues. And again, this is not useful for anyone, just for sharing purposes.
