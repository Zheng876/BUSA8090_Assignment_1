#!/bin/bash
sort -k1r annotation > f1
sort -k1r expression > f2
cat f1 > annotation
cat f2 > expression
join -t$'\t' -o 1.1 1.2 2.2 1.3 annotation expression


