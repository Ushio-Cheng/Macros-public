# Exec-Shell

Execute shell command right from Alfred search bar.

## Requirements

- Alfred 4 \(of course\)
- iTerm 2

## Usage

Type "sh" to open iTerm and create a new window.  
Or type "sh &lt;command&gt;" to create a new window and run the command.

> Would need to authorize Alfred to access iTerm and System Event if not previously done so.

## Caveat / Known Problem

Since executing command is implemented by the following logic:

- Call iTerm
- **delay 0.5s**
- Type out the command

if iTerm failed to be initialize in 0.5s or iTerm window is not getting focus for any reason \(e.g. some other application takes away focus at that exact moment\), the "execute command" part would not work and would potentially disturbe the currently focused window.  
As for as I know there is no good way around this, send a PR/issue if you have any idea.

Also, as long as iTerm is running in background it should not be an issue.
