# coding practice + notes

this is my own personal practice and notes on various different languages that im learning

this repo can be used as a resource for people if theyre also learning any of the languages that i am too, however i would strongly recommend that instead of copying any code here, try and learn how to write it yourself with the notes/comments provided


## contents

this list will be updated periodically once i start learning a new language

- x86 assembly using the [NASM](https://www.nasm.us/) assembler

- the C programming language

- python

- go lang

- bash (shell) script


## how to get each language up and running

- x86 assembly using the [NASM](https://www.nasm.us) assembler

```shell
# for debian based distributions (or that use the apt package manager):
> sudo apt install nasm
```

```shell
# for arch based distributions (or that use the pacman package manager (i use arch btw)):
> sudo pacman -S nasm
```

```shell
# for the rest of you:

# gentoo
> emerge --ask dev-lang/nasm

# SUSE
> sudo zypper install nasm

# DNF (red hat, fedora, cent)
> sudo dnf install nasm
```

```shell
# ... gross:

# go to the nasm website
# download the installer
# extract it into your "folder" of choice LOL
# install it
# add to your system PATH if needed
```
##

- the C programming language

```shell
# most linux distributions that i know of come with gcc installed
# if you do not have gcc installed i dont know how you're running linux
# you must be running your own compiled kernel and at that point you should know how to install gcc

# ... gross:

# go to the MinGW website
# download the installer
# run the installer and add the bin "folder" into your system PATH

```

##

- python

```shell
# again most linux distributions that i know of come with python3 installed
# if you dont have python3 installed, this time i can help you

```

```shell
# for debian based distributions (or that use the apt package manager):
> sudo apt install python
```

```shell
# for arch based distributions (or that use the pacman package manager (i use arch btw)):
> sudo pacman -S python
```

```shell
# for the rest of you:

# gentoo
> emerge --ask dev-lang/python:version of your choosing

# SUSE
> sudo zypper install python

# DNF (red hat, fedora, cent)
> sudo dnf install python
```

```shell
# ... gross:

# go to the python website
# download the installer
# MAKE SURE TO SPECIFY TO RUN AS ADMIN AND TO ADD TO SYSTEM PATH ON THE FIRST SCREEN OF THE INSTALL
# check version using "python --version" in a terminal
```

##

- go lang

```shell
# for debian based distributions (or that use the apt package manager):
> sudo apt install golang-go
```

```shell
# for arch based distributions (or that use the pacman package manager (i use arch btw)):
> sudo pacman -S go
```

```shell
# for the rest of you:

# gentoo
> emerge --ask dev-lang/go

# SUSE
> sudo zypper install go

# DNF (red hat, fedora, cent)
> sudo dnf install nasm
```

```shell
# ... gross

# go to the "go" website
# download the installer (.msi i think)
# run it
# should setup system PATH variables already
# if not add them

```

##

- bash (shell) script

```shell
# have any terminal that runs bash pretty much
```

```shell
# for you windows users

# use Windows Subsystem for Linux (WSL)
# theres a couple links below
```

[WSL](https://www.youtube.com/watch?v=zZf4YH4WiZo) - windows 11

[WSL](https://www.youtube.com/watch?v=LzY_Y2y4dr4) - windows 10
## authors

- [@wound](https://www.github.com/woundv)
