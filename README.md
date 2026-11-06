# Bash functions

Small CLI functions for Linux and macOS.
They are written in Bash but work from either Bash or Zsh.

## Installation

Clone the repository into `~/.hidden-repos/bash-functions` and run the installation script:

```bash
mkdir -p "${HOME}/.hidden-repos"
git clone git@github.com:pedro-nunez/bash-functions.git "${HOME}/.hidden-repos/bash-functions"
"${HOME}/.hidden-repos/bash-functions/scripts/install"
```

This links `open_book`, `open_notes`, `open_paper`, `push_repo`, and `pull_repo`
to the shorter commands `b`, `n`, `p`, `push`, and `pull` in `~/.local/bin`.
Unrelated existing files and links are not replaced. Make sure `~/.local/bin`
is in your `PATH`.

## Open references
Open a book, lecture notes or a paper quickly from the terminal.
References are matched by filename prefix in `~/Literature/books`,
`~/Literature/notes`, and `~/Literature/papers`, respectively. A single matching
file opens in the system's default application; multiple matches are listed.
The commands use `open` on macOS and `xdg-open` on Linux.

For example, naming the references according to BibLaTeX's alphabetic style citations,
```
$ b har77
```
would open the *Algebraic Geometry* book published by Hartshorne in 1977.
If there are several options available, say
```
$ p ser55
```
for a paper published by Serre in 1955, then the output will say so
and give the list of all available options.

## Git shortcuts
These functions only make the process of pushing and pulling from GitHub a bit quicker.
The first argument is the repo to be pushed or pulled,
which is assumed to be located in the current directory.
The remaining arguments are taken as commit message.
For example, the command
```
$ push latex-templates Update note template
```
is equivalent to
```
$ cd latex-templates
$ git add .
$ git commit -m "Update note template"
$ git push
$ cd ..
```
If no commit message is specified, "Some updates" is used by default.
If no argument is passsed, then a default repo is pushed or pulled.
This default repo is configured at the top of `scripts/git_shortcuts`.
