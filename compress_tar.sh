#!/bin/bash

for file in *.tar; do
    tar -czf "${file%.tar}.tar.gz" "$file"
done
