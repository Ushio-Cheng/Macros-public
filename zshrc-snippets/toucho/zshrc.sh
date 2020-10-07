# USAGE: Append this to ~/.zshrc

# Add behavior: copy template if file .template exist
# to touch
# as toucht to avoid confusion
touchFileWTemplate(){
    if [[ -f .template ]]
    then
        cp .template $1
    else
        touch $1
    fi
}
alias toucht="touchFileWTemplate"

# touch file from template (if .template exists) then open
touchAndOpen(){
    touchFileWTemplate $1
    open $1
}
alias toucho="touchAndOpen"
