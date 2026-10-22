#!/bin/bash

# This is the bash autocomplete script for `foxer` script. All it does is list all the browser
# profiles located in folder path inside FOXER_PROFILES Bash variable. A browser profile
# is the basename of the folder containing it.
#
# By default this script will list the contents of `$HOME/profiles/browsers/firefox`, one level,
# folders only. 

_foxer_script()
{
    _script_commands=`find ${FOXER_PROFILES:=$HOME/profiles/browsers/firefox} -maxdepth 1 -type d | xargs -I {} basename {}`
    local cur
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=( $(compgen -W "${_script_commands}" -- ${cur}) )

    return 0
}

complete -o nospace -F _foxer_script foxer
