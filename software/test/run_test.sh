#!/bin/bash
# set -x
gcc access_leb128.c -o leb128
sudo sudo ./load_driver.sh 4
sudo ./leb128
