#!/bin/bash

FILE=$1

if [[ ! -f $FILE ]]; then
    echo "File not found"
    exit 1
fi

sed -i '5,$ {/welcome/ s/give/learning/g}' "$FILE"

echo "Replacement completed successfully"

