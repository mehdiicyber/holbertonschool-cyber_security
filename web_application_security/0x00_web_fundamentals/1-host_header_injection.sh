#!/bin/bash
curl -s -X POST -H "host: $1" -d "$3" "$2"
