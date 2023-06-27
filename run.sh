#!/bin/bash

if [[ $1 == "bootstrap" ]]; then
    go run . -seed 1234 -port 50000 -duration $2&
else
    go run . -peer /ip4/10.210.118.52/tcp/50000/p2p/12D3KooWE3AwZFT9zEWDUxhya62hmvEbRxYBWaosn7Kiqw5wsu73 -duration $1 &
fi

# Wait for the code to finish and exit
wait $!
