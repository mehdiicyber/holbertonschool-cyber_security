#!/bin/bash
curl -s -X POST "$2" --header "Host: $1" --data "$3"
