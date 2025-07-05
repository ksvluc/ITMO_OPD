#!/bin/bash

cd ~

for file in $(ls -pR | grep -v -e "/$" -e "authorized_keys" -e "^$" -e ":$")

do
    creation_date=$(stat "$file" 2>/dev/null | cut -d '"' -f 2 | cut -d ':' -f 1 | cut -c -8 | tr -d ' ')
    if [ -d "$creation_date" ]
    then
    cp "$file" "$creation_date" 2>/dev/null
    else
    mkdir "$creation_date" 2>/dev/null
    cp "$file" "$creation_date/$file" 2>/dev/null
    fi
done
    