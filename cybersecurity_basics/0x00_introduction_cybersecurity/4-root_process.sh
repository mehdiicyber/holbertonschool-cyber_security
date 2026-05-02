#!/bin/bash
ps -u "$1" aux | grep -vE '(\s+)0\s+0(\s+)'
