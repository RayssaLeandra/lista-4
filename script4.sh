#!/bin/bash 

sed -E -e 's/[0-9]/**!!CEN-SU-RA-DO!!**/' -e 's/[0-9]//g' < ips.txt
