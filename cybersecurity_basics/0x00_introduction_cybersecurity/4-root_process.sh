#!/bin/bash
ps -F -u "$1" | grep -v " 0      0 "
