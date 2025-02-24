#!/bin/bash

set -e
# Replace changeme with your values. Check out readme for more.
POOL="cfx-asia1.nanopool.org"
PORT=10543
MYADDRESS="WrkzpAXkeEzQu6n6BYZuxrjf2chEaHBRbhnQNL667bwMWWDsXD1xNnHTck2NBBMmcpVbuNm5ppc1kj3hSmWJ566M8eK5wZRaYv"
COINNAME="conflux"

cd xmrig/build

# executable permissions
echo "Setting executable permissions"
if ! chmod +x xmrig; then
    echo "Error: Failed to set executable permissions"
    exit 1
fi

echo "Starting now"
./xmrig -o $POOL:$PORT -u $MYADDRESS --tls --coin $COINNAME
