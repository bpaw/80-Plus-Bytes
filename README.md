## Objective

As a CSE Tutor, I get annoyed having to manually determine if student submissions have files with lines over 80 characters.

That is why I am working on this project so that I can easily parse through every student submission and determine quickly whether they violated the style guidelines assignmed to them.

## Steps in Development (as of now, open to changing in near future)

* [x] command to determine if a specific file's line is over 80 chars
* [x] use getopts to check if a specified file with -f flag is over 80 chars
* [x] use getopts to check for all files of a given extension within current directory
* [x] use getopts to check all files of a given extension within a given directory
* [x] use getopts to allow for recursively checking all the given directory's subdirectories (current directory if not specified).

## Usage

The script can be called without any arguments. It will default to searching every file within the current directory along with any files in the subdirectories. It will also evaluate any file since no extension was specified.
```
./80Chars.sh
```

Calling the script with a -f flag will allow the user to specify what file to evaluate.

NOTE: This flag CANNOT be used with any other flag. 
```
./80Chars.sh -f [filename]
```

Using the -e flag allows the user to specify what type of file extensions the script should evaluate. If the directory is not specified, then it will search through all files starting from the current directory.
```
./80Chars.sh -e [extension]
```

If the script is given a -d flag, then it will evaluate all the files starting from the specified directory's level. 
```
./80Chars.sh -d [directory name]
```
