#!/bin/bash

cut -d " " -f1 downloads.txt | sort -u
cut -d " " -f3 downloads.txt | sort | uniq -c

