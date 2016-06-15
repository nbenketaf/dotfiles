# -----------------------------------------------------------------------------
#          FILE: nab.zsh-theme
#   DESCRIPTION: oh-my-zsh theme file.
#        AUTHOR: Nabil Benketaf (www.benketaf.com)
#      BASED ON: jerem.zsh-theme from Jérémie Grodziski (www.grodziski.com)
#       VERSION: 0.1
#    SCREENSHOT: 
# -----------------------------------------------------------------------------

#use extended color pallete if available
#if [[ $TERM = *256color* || $TERM = *rxvt* ]]; then
#    turquoise="%F{81}"
    orange="%F{166}"
#    purple="%F{135}"
#    hotpink="%F{161}"
#    limegreen="%F{118}"
    yellow="%F{136}"
    green="%F{64}"
    red="%F{160}"
    blue="%F{33}"
#else
#    turquoise="$fg[cyan]"
#    orange="$fg[yellow]"
#    purple="$fg[magenta]"
#    hotpink="$fg[red]"
#    limegreen="$fg[green]"
#fi

bold=$(tput bold)

function git_prompt_info() {
   ref=$(git symbolic-ref HEAD 2> /dev/null) || return
   echo "$fg[white]on $reset_color$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function get_pwd() {
   print -D $PWD
   #print -D %1~
}

function precmd() {
   print -rP '
   $bold%{$orange%}%n %{$reset_color%}$fg[white]at $bold%{$yellow%}%m %{$reset_color%}$fg[white]in $bold%{$green%}$(get_pwd) %{$reset_color%}$(git_prompt_info)'
   #$fg[cyan]%n $fg[white]at $fg[yellow]%m $fg[white]in %{$reset_color%}$(get_pwd) $(git_prompt_info)'
}

local ret_status="%(?:%{$green%}λ:%{$red%}λ%s)"
PROMPT='$(git_prompt_status) ${ret_status} % %{$reset_color%}'
RPROMPT='[%D{%d/%m/%y} %*]'

MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"
ZSH_THEME_GIT_PROMPT_AHEAD="⬆"
ZSH_THEME_GIT_PROMPT_BEHIND="⬇"
ZSH_THEME_GIT_PROMPT_DIVERGED="⬍"

ZSH_THEME_GIT_PROMPT_PREFIX="(\ue0a0:"
ZSH_THEME_GIT_PROMPT_SUFFIX=")$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$red%}"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[cyan]"
