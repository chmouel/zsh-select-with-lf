(( ! $+commands[lf] )) && return

(( ! ${+ZSH_SELECT_WITH_LF_FILE_BIND} )) && typeset -g ZSH_SELECT_WITH_LF_FILE_BIND='^x^l'
(( ! ${+ZSH_SELECT_WITH_LF_DIR_BIND} )) && typeset -g ZSH_SELECT_WITH_LF_DIR_BIND='^xl'

__select_with_lf_file() {
    action=${1:-file}
    local current=${LBUFFER##* }
    [[ $action == file ]] && {
        local tmpfile=${TMPPREFIX:-/tmp/.zsh}-zsl-$$
        command lf -selection-path=$tmpfile
        ret=$?
        selection=$(cat "$tmpfile")
        rm -f $tmpfile
    }
    [[ $action == dir ]] && {
        selection=$(command lf -print-last-dir )
        ret=$?
    }
    [[ -n ${current} ]] && LBUFFER="${LBUFFER% *} "
    LBUFFER="$LBUFFER$selection"
    return $ret
}

__select_with_lf_dir() {
    __select_with_lf_file dir
    return $?
}

autoload -U __select_with_lf_file __select_with_lf_dir
zle -N __select_with_lf_file
zle -N __select_with_lf_dir

bindkey $ZSH_SELECT_WITH_LF_FILE_BIND __select_with_lf_file
bindkey $ZSH_SELECT_WITH_LF_DIR_BIND __select_with_lf_dir
