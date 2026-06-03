# batch-renamer

A lightweight, zero-dependency POSIX Bash utility designed for blazingly fast bulk file renaming.

> Note: Package `uuid-utils` needed for termux for `uuidgen`.

## Why?

I like simple things, things which does the job and are easy to remember. I did'nt like rename command to change extension, e.g., to change png to jpg using rename would be, `rename 's/\.png$/\.jpg/' *.jpg` and that is lot of typing and memorization to do, mine is just `br -e png jpg`.

Renaming files, organising them are some of the things i do lot. There's lot of stuff that needs to be done. Most of the bugs need to be fixed.

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

## Usage examples

### Add extension

- Useful for one specific kind of file

```
$ ls
exploit  my_script  two-fer
$
$ br -a sh
$
$ ls
exploit.sh  my_script.sh  two-fer.sh
```

### Change extension
```
$ ls
mydll.dll    myfile2.pdf  myvids2.mp4
myfile1.pdf  myvids1.mp4  setup.exe
$
$ br -e mp4 mkv
$
$ ls
mydll.dll    myfile2.pdf  myvids2.mkv
myfile1.pdf  myvids1.mkv  setup.exe
```

### UUID based naming

- Recommended for large number of files.

```                                            
$ br -u                              
$                                              
$ ls                                           
24060a6e-52ee-4042-87ba-ffe92b1dc2e4.mkv        
2f3933b8-8146-46bd-897f-0405f704d63f.mkv
46102dda-ea2d-413f-bea0-e3dbe802c0f5.pdf        
```
- Method remains same for -r and -t options

### Chronological naming

- Uses default prefix (file) when no argument provided

```
$ br -n
$
$ ls
file_01.pdf  file_03.mkv  file_05.exe
file_02.mkv  file_04.pdf  file_06.dll
```

- Pass an argument to use it as prefix here, vacation_videos

```
$ br -n vacation_videos
$
$ ls
vacation_videos_01.mp4  vacation_videos_04.mp4
vacation_videos_02.mp4  vacation_videos_05.mp4
vacation_videos_03.mp4  vacation_videos_06.mp4
```

## License
MIT
