# Bash utilities

Small CLI utilities for Linux and macOS.
They are written in Bash but work from either Bash or Zsh.

## Installation

Clone the repository into `~/.hidden-repos/bash-functions` and run the installation script:

```bash
mkdir -p "${HOME}/.hidden-repos"
git clone git@github.com:pedro-nunez/bash-functions.git "${HOME}/.hidden-repos/bash-functions"
"${HOME}/.hidden-repos/bash-functions/install"
```

The installer creates symbolic links in `~/.local/bin`, making the following commands available:

| Command | Script |
|---------|--------|
| `b` | `literature/open_book` |
| `p` | `literature/open_paper` |
| `n` | `literature/open_notes` |
| `push` | `git/push_repo` |
| `pull` | `git/pull_repo` |

Make sure `~/.local/bin` is in your `PATH`. Running the installer again is safe; existing files and unrelated symbolic links are not overwritten.

## Literature
Quickly open books, papers, or lecture notes by filename prefix.
The commands search for matching files in `~/Literature/books`, `~/Literature/papers`, and `~/Literature/notes`, respectively.
These directories can be changed by setting `LITERATURE_DIR`.

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

## Git

Quickly push and pull repositories:

```bash
push [repository] [commit message...]
pull [repository]
```

For example, from `~/git`:

```bash
push latex-templates Update note template
pull latex-templates
```
These functions only make the process of pushing and pulling from GitHub a bit quicker.
The first argument is the repo to be pushed or pulled,
which is assumed to be located in the current directory.
The remaining arguments are taken as commit message.
If no commit message is specified, "Some updates" is used by default.
If no argument is passsed, then a default repo is pushed or pulled.
This default repo is configured at the top of `scripts/git_shortcuts`.
