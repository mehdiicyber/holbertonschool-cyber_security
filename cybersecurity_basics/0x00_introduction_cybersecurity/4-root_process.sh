#!/bin/bash
ps -u "$1" -F | grep -vP "\s+0\s+0\s"
