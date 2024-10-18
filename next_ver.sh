#!/bin/sh
#
# VER=3.7.2 # -> 3.7.3
# VER=3.8   # -> 3.8.0
# VER=4     # -> 4.0.0
# VER=4.    # -> 4.0.0
# VER=4.0   # -> 4.0.0
# VER=4.0.0 # -> 4.0.1
#
VER=$(curl --ssl-no-revoke -sS https://raw.githubusercontent.com/usgs-coupled/phreeqc-version/main/phreeqc-version.txt)
ver_major=$(echo "$VER" | awk -F. '{print $1}')
ver_minor=$(echo "$VER" | awk -F. '{print $2}')
if [ -z "$ver_minor" ]; then
    ver_minor=0
    ver_patch=0
else
    ver_patch=$(echo "$VER" | awk -F. '{print $3}')
    if [ -z "$ver_patch" ]; then
        ver_patch=0
    else
        ver_patch=$((ver_patch+1))
    fi
fi
VER="${ver_major}.${ver_minor}.${ver_patch}"
echo "${VER}"
