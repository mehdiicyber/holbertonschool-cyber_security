#!/bin/bash
sudo last | grep -v "reboot" | head -n 5
