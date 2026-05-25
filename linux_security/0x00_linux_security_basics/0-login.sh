#!/bin/bash
last -n 10 | grep -v "reboot" | head -n 5
