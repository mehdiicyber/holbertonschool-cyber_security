#!/bin/bash
grep "200" access.log | cut -d' ' -f1 | sort -u | wc -l
