# USAGE: Append this to ~/.zshrc

# Add behavior: copy template if there is a template
# to touch, as toucht to avoid confusion
alias toucht="touchFileWTemplate"
touchFileWTemplate(){
    if [[ -f .touchtInstructions.sh ]]
    then
        sh .touchtInstructions.sh "$@"
    else
        if [[ $1 = "" ]]
        then
            echo "\033[31m[ERROR]\033[0m No filename.";
        else
            if [[ -f .template ]]
            then
                cp .template $1
            else
                touch $1
            fi
        fi
    fi
}

# touch file from template (if .template exists) then open
alias toucho="touchAndOpen"
touchAndOpen(){
    if [[ -f .touchtInstructions.sh ]]
    then
        filename=$(sh .touchtInstructions.sh "$@")
        if [[ $filename = "" ]]
        then
            echo "\033[31m[ERROR]\033[0m No filename echoed by .touchtInstructions.sh ."
        else
            if [[ -f $filename ]]
            # Error handler, ex. if .touchtInstructions.sh failed in error, 
            # it is extremely not likely that there is a file that have a 
            # name matches an error message
            then
                open $filename
            else
                echo "\033[31m[ERROR]\033[0m File DNE, script halted, filename give by .touchtInstructions.sh is"
                echo $filename
            fi
        fi
    else
        if [[ $1 = "" ]]
        then
            echo "\033[31m[ERROR]\033[0m No filename."
        else
            touchFileWTemplate $1
            open $1
        fi
    fi
}