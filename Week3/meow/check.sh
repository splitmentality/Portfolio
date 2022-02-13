#!/bin/bash

mkdir toasty
echo "test" > items
if [ -e toasty ]; then
    echo "exists"
    if [ -f "test" ]; then
        echo "file"
    fi
elif [ -d toasty ]; then
    echo "Directory" 
fi