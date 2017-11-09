#!/bin/bash

file=""
while getopts ":f:" opt; do
  case $opt in
    f)
      echo "-f flag was triggered with $OPTARG as the target file." >&2
      file=$OPTARG
      ;;
    \?) 
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument."
      exit 1
      ;;
  esac
done
echo "The file is: $file"
grep '.\{81,\}' $file
