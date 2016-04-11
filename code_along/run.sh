#!/bin/bash
for file in *.rb
do
  echo "Running $file"
  ruby $file 
  echo
done
