#!/bin/bash

# First argument = containerid
curl -s -L -X PUT http://localhost:2379/v2/keys/ratchet/$1/pod_name -d value="local_container"
curl -s -L -X PUT http://localhost:2379/v2/keys/ratchet/$1/pair_name -d value="pair_container"
curl -s -L -X PUT http://localhost:2379/v2/keys/ratchet/$1/public_ip -d value="1.1.1.1"
curl -s -L -X PUT http://localhost:2379/v2/keys/ratchet/$1/local_ip -d value="192.168.2.100/24"
curl -s -L -X PUT http://localhost:2379/v2/keys/ratchet/$1/local_ifname -d value="in1"
curl -s -L -X PUT http://localhost:2379/v2/keys/ratchet/$1/pair_ip -d value="192.168.2.101/24"
curl -s -L -X PUT http://localhost:2379/v2/keys/ratchet/$1/pair_ifname -d value="in2"
curl -s -L -X PUT http://localhost:2379/v2/keys/ratchet/$1/primary -d value="true"
curl -s -L -X PUT http://localhost:2379/v2/keys/ratchet/byname/local_container value="$1";