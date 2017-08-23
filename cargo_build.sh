#!/bin/bash

for FOLDER in "cache" "db" "producer"
do
    cd $FOLDER
    cargo build
    cd ..
done