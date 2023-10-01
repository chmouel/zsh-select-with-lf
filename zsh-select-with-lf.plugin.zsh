(( ! $+commands[lf] )) && return

(( ! ${+ZSH_SELECT_WITH_LF_FILE_BIND} )) && typeset -g ZSH_SELECT_WITH_LF_FILE_BIND='^x^l'
(( ! ${+ZSH_SELECT_WITH_LF_DIR_BIND} )) && typeset -g ZSH_SELECT_WITH_LF_DIR_BIND='^xl'

__select_with_lf_file() {
    action=${1:-print-selection}
    local current=${LBUFFER##* }
    local initial_directory=${PWD}
    [[ -n ${current} ]] && {
        current=${current%%[[:space:]]#}
        [[ ${current} == '~'* ]] && current=${HOME}${current#'~'}
    }
    if [[ -d ${current} ]]; then
        initial_directory=${current}
    elif [[ -f ${current} ]]; then
        initial_directory=${current%/*}
    elif [[ -d ${current%/*} ]]; then
        initial_directory=${current%/*}
    fi
    selection="$(command lf -${action} ${initial_directory})"
    [[ -z ${selection} ]] && return 1
    [[ -n ${current} ]] && LBUFFER="${LBUFFER% *} "
    LBUFFER="$LBUFFER$selection"
}

__select_with_lf_dir() {
    __select_with_lf_file print-last-dir
}

autoload -U __select_with_lf_file __select_with_lf_dir
zle -N __select_with_lf_file
zle -N __select_with_lf_dir

bindkey $ZSH_SELECT_WITH_LF_FILE_BIND __select_with_lf_file
bindkey $ZSH_SELECT_WITH_LF_DIR_BIND __select_with_lf_dir
