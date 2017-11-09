#!/bin/bash

file=""

d_flag=0	# whether -d flag was passed
e_flag=0	# whether -e flag was passed
f_flag=0	# whether -f flag was passed

while getopts ":d:e:f:" opt; do
  case $opt in
    d)
      echo "-d flag was specified with $OPTARG as the target directory." >&2
      d_flag=1
      ;;
    e)
      echo "-e flag was specified with $OPTARG as the target extension." >&2
      e_flag=1
      ;;
    f)
      echo "-f flag was triggered with $OPTARG as the target file." >&2
      file=$OPTARG
      f_flag=1
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

if [[ $f_flag -eq 1 && $d_flag -eq 1 ]]; then
  echo "Cannot specify both -d or -f flags." >&2
  exit 1
elif [[ $f_flag -eq 1 && $e_flag -eq 1 ]]; then
  echo "Cannot specify both -e or -f flags." >&2
  exit 1
fi

if [[ $f_flag -eq 1 ]]; then 
  echo "The file is: $file"
  grep '.\{81,\}' $file
else
  echo "-f flag was not specified, so 80Char is in directory mode"
fi
