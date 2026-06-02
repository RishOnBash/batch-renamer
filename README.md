# batch-renamer

A lightweight, zero-dependency POSIX Bash utility designed for blazingly fast bulk file renaming.

> Note: Package `uuid-utils` needed for termux for `uuidgen`.

## Why?

I like simple things, things which does the job and are easy to remember. I did'nt like rename command to change extension, e.g., to change png to jpg using rename would be, `rename 's/\.png$/\.jpg/' *.jpg` and that is lot of typing and memorization mine is just `br -e jpg`.

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
make install
```

3. **Run**
```
~ $ br
```
4. **Uninstall**
```
make uninstall
```

## License
MIT
