# toucho and toucht

Only works on MacOS, not linux in general!

## `toucht`: touch File with template

**Usage**: `toucht filename`

Caveat: do not specify path instead of filename. it would only look for template in current folder!  
(but can also be a useful feature as long as you are aware of that)

- build on top of `touch`, thus `toucht`
- Add some new behavior to touch
  - that, if `.template` exists in current directory, the file created would copy the content in `.template`
  - If `.touchtInstructions.sh` exists in current directory, the script will do nothing other then call that script.

Usecase:

- especially useful for non-text file because some structural code/content is needed for most of them
- Also can be used to create Note templates, if you store your notes as MD files.

## `toucho`: touch & open

`toucht`, and then `open`
=> would inherit behavior from toucht

REMARK: if `.touchtInstructions.sh` exists, it must echo the filename created for the open part to work !!!!

## Installation?

Just append the `zshrc.sh` content to `~/.zshrc`
