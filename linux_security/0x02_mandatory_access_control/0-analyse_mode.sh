#!/bin/bash
# Sistemdəki cari SELinux rejimini ekrana çıxarır

sestatus | grep "SELinux status:"
