#!/bin/bash

# cross-compile a release to target/x86_64-unknown-linux-musl/release
function build {
    docker run --rm -it -v `pwd`:/home/rust/src ekidd/rust-musl-builder cargo build --release
}

for FOLDER in "cache" "db" "producer"
do
    cd $FOLDER
    build
    cd ..
done

# rebuild all local images
docker-compose build