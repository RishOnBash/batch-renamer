# batch-renamer

A lightweight, zero-dependency POSIX Bash utility designed for blazingly fast bulk file renaming.

> Note: Package `uuid-utils` needed for termux for `uuidgen`.

## Why?

I like simple things, things which does the job and are easy to remember.Renaming files, organising them are some of the things i do lot.

I did'nt like rename command to change extension, e.g., to change png to jpg using rename would be, `rename 's/\.png$/\.jpg/' *.jpg` and that is lot of typing and memorization to do, mine is just `br -e png jpg`. Apart from this there are lot of other which can be done easily.

## Features

* **Add and change extension:** Easier than ever.
* **Timestamp based naming:** Rename based on timestamp.
* **Random file naming:** Using universally unique identifiers (UUIDv4) or raw random strings from `/dev/urandom`.
* **Aesthetic indexing:** Numerical sorting by integrating zero-padded formatting strings.

## Setup 

1. **Clone the repository**
```
git clone https://github.com/RishOnBash/batch-renamer.git

cd batch-renamer
```

2. **Install**
```
make
```

3. **Run**
```
$ br
```
4. **Uninstall**
```
make uninstall
```

## Usage

```
Usage: br [OPTION] [ARGUMENT]

A minimalist, high-performance batch file renamer.

Options:
    -a <ext>           Add extension to all files
    -e <old> <new>     Replace a specific file extension
    -f <ext>           Force change all extensions to a new type
    -n [prefix]        Sequential numeric naming (Default: 'file_01.ext')
    -u                 Rename files to unique UUIDv4 hashes
    -t                 Rename files using a chronological timestamp
    -r [length]        Rename files to random alnum strings (Default: 15)
    -l                 Convert all filenames to lowercase
    -s                 Replace spaces in filenames with underscores
    -h                 Display this help message and exit

Examples:
    br -e mp4 mkv      Change all .mp4 files to .mkv
    br -n photo        Rename files to photo_01, photo_02, etc.
    br -r 24           Rename files to 24-character random strings
```

## Examples

### Add extension (-a)
Useful for one specific kind of file

```
$ ls
exploit  my_script  two-fer
$ br -a sh
$ ls
exploit.sh  my_script.sh  two-fer.sh
```

### Replace specific extension (-e)
Target and swap out only one explicit type of extension while leaving other file types alone.

```
$ ls
document.pdf  script.sh  video.mp4
$ br -e mp4 mkv
$ ls
document.pdf  script.sh  video.mkv
```

### Force override all extensions (-f)
Unify every regular file in the directory to a target extension, regardless of its original type.

```
$ ls
data.txt  notes.docx  readme.md
$ br -f txt
$ ls
data.txt  notes.txt  readme.txt
```

### UUID based naming (-u)

Recommended for large number of files.

```                                            
$ br -u                                             
$ ls                                           
24060a6e-52ee-4042-87ba-ffe92b1dc2e4.mkv        
2f3933b8-8146-46bd-897f-0405f704d63f.mkv
46102dda-ea2d-413f-bea0-e3dbe802c0f5.pdf        
```
> Note: The layout behavior is identical for the random (-r) and timestamp (-t) options.

### Numeric naming (-n)
Uses default prefix (file) when no argument provided

```
$ br -n
$ ls
file_01.pdf  file_03.mkv  file_05.exe
file_02.mkv  file_04.pdf  file_06.dll
```

Pass an argument to use it as prefix here, vacation_videos

```
$ br -n vacation_videos
$ ls
vacation_videos_01.mp4  vacation_videos_04.mp4
vacation_videos_02.mp4  vacation_videos_05.mp4
vacation_videos_03.mp4  vacation_videos_06.mp4
```

## License
MIT
