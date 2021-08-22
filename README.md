# wight_spider

this lib is heavily inspired in clojure's walkable and is for now
tightly coupled to postgres features.

simply put wight_spider is an abstraction layer for lisp languages
(currently only for fennel but the idea can be ported easily) to
declare json aggregation functions in a readable way and produce
queries to be consumed by an actual driver/db-system

the structure of a query goes as follows:

``` fennel
(knit
  [:table/field
   :table/another_field
   {:nested/structure [:another_table/field]}]
  "query_string")
```

as you can see it is quite simple, and indeed it only
defines the result structure but lets the actual 'query'
to you

