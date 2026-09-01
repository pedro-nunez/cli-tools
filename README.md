# Bash functions

## Open references
Open a book, lecture notes or a paper using their biblatex alphabetic style citation. For example,
```
$ b har77
```
would open the book published by Hartshorne in 1977. If there are several options available, say
```
$ p ser55
```
for a paper published by Serre in 1955, then the output will say so and give the list of all available options.

### Prerequisites:

- Having [Okular](https://en.wikipedia.org/wiki/Okular) installed.
- Having all references named accordingly inside folders $HOME/books, $HOME/notes and $HOME/papers respectively.

## Push and pull shortcuts
These functions only make the process of pushing and pulling from GitHub a bit quicker. They should be called from the folder containing the repository's folder. For example, the command
```
$ push latex-templates update blurb template
```
is equivalent to
```
$ cd latex-templates
$ git add .
$ git commit -m "update blurb template"
$ git push
$ cd ..
```
If no commit message is specified, "Some updates" is used by default.
