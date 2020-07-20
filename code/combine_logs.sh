#!/usr/bin/env bash

(echo -n "run,"; head -n1 multi_balanced_cv0.csv) >combined_multi.csv
for i in multi*.csv; do BASE=$(basename $i .csv); grep -v epoch $i | perl -pe 's/^\d+,/'$BASE',$.,/'; done >>combined_multi.csv

(echo -n "run,"; head -n1 lge_scarOnly.5_cv0.csv) >combined_lge.csv
for i in lge*.csv; do BASE=$(basename $i .csv); grep -v epoch $i | perl -pe 's/^\d+,/'$BASE',$.,/'; done >>combined_lge.csv

(echo -n "run,"; head -n1 t2_edemaOnly.5_cv0.csv) >combined_t2.csv
for i in t2*.csv; do BASE=$(basename $i .csv); grep -v epoch $i | perl -pe 's/^\d+,/'$BASE',$.,/'; done >>combined_t2.csv
