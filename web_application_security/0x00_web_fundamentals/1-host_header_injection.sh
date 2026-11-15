#!/bin/bash
curl -s -X POST --header "Host: $1" --data "$3" "$2"
