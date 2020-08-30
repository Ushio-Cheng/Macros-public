# KM - YTDL Integration
No trigger is set because it is intended to be triggered by Alfred ([Alfred-KM integration](https://github.com/iansinnott/alfred-maestro)).

## Workflow
1. See a good youtube video
2. copy address from address bar
3. cmd-space trigger alfred search
4. type 'km ytdl'
5. select which format I want
6. enter, done.

## Prerequsit
- Alfred 4 (optional)
- Keyboard Maestro
- youtube-dl `brew install youtube-dl`
- ffmpeg `brew install ffmpeg`

## Folder Structure
`Scripts` -> `~/TerminalUtility/TerminalScripts/YTDL`  
Directory `~/Downloads/YTDL` must exist