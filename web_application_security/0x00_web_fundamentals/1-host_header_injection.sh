#!/bin/bash
curl -s -k -X POST -H "Host: $1" -d "$3" "$2"
