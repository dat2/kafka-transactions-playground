# kafka-transactions-playground

Run `./build.sh` and it will generate 3 docker images for you, based on each
folder.

The main purpose of this app is to create some sort of system like this:

- postgres: stores the current value of accounts
- redis: stores a cached value of accounts
- kafka: the main backbone of communication
- producer: create some random transactions between accounts
- db[-consumer]: consume transactions, update the database accordingly
- cache[-consumer]: consume transactions, update redis

