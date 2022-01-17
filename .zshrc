# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/antigen/antigen.zsh

# antigen use oh-my-zsh

# antigen bundle git
# antigen bundle pip
# antigen bundle pyenv
# antigen bundle mercurial
# antigen bundle command-not-found
# antigen bundle branch
# antigen bundle z
# antigen bundle fzf
# antigen bundle nvm

antigen bundle wfxr/forgit
antigen bundle agkozak/zsh-z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle changyuheng/zsh-interactive-cd
# antigen bundle subnixr/minimal
antigen theme romkatv/powerlevel10k

antigen apply

# Global, misc. shell settings

# Completions
autoload -U compinit
compinit -C

# Arrow key menu for completions
zstyle ':completion:*' menu select

# Case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path  ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

## ZSH-specific shell environment flags only relvant to interactive shells
# Variable behaviors
setopt NO_ALL_EXPORT		# Don't export all variables to environment

# Directory changing
setopt AUTO_CD			# cd to a directory if it's given without a command
setopt CDABLE_VARS		# Try to cd to variable value from ~ if no leading slash
setopt NO_AUTO_PUSHD      	# Prevent all directories from being automatically pushed onto the stack
setopt PUSHD_IGNORE_DUPS	# Directory only appears once on the stack
#setopt PUSHD_SILENT		# No non-error messages from pushd
setopt PUSHD_TO_HOME		# pushd with no arguments goes to ~

# Completion
setopt AUTO_LIST         # (Default) Automatically list ambiguous completion choices
setopt AUTO_MENU         # (Default) Automatically use menu completion after second completion request
#setopt AUTO_REMOVE_SLASH # (Default) Trailing / in completion is removed
setopt MENU_COMPLETE	  # Cycle through completions by completing in place
setopt NO_LIST_BEEP       # Prevent beeping on ambiguous completion

# Globbing
setopt EXTENDED_GLOB	# Allow globbing qualifiers and other extensions
# cd /a/b/c --> cd /a???/b???/c???
setopt COMPLETE_IN_WORD
setopt GLOB_DOTS	# Patterns may match without leading periods
setopt NOMATCH		# Throw error if a glob fails to match

# History behavior
export HISTSIZE=10000		# number of lines kept in history
export SAVEHIST=10000 		# number of lines saved in the history after logout
setopt INC_APPEND_HISTORY 	# append command to history file once executed
setopt HIST_IGNORE_DUPS
setopt NO_HIST_BEEP       	# Don't beep on failed history lookups
setopt HIST_IGNORE_SPACE	# Do not store lines starting with space
setopt HIST_REDUCE_BLANKS	# Trim multiple insignificant blanks
setopt NO_HIST_VERIFY		# Don't show expanded line for editing
setopt BANG_HIST		# ! style history is allowed
setopt INTERACTIVE_COMMENTS  	# Allow comments to be added; Helpful for history lookups

# Background jobs
setopt AUTO_CONTINUE    # Ensure a stopped job is continued when disowned
setopt NO_BG_NICE	# Don't lower priority of background jobs
setopt CHECK_JOBS       # Report status of background jobs when exitting a shell
setopt LONG_LIST_JOBS	# More verbose listing of jobs
setopt NOTIFY		# Notify of background job changes as soon as they happen

# Miscellaneous
setopt NO_BEEP		# Do not beep on line editor errors
setopt NO_CORRECT	# Don't suggest corrections for misspelled commands
bindkey -e         	# Emacs key bindings

# Disable core dumps
limit coredumpsize 0

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# zsh-history-substring-search configuration
# [Up]/[Down] ([k]/[j] in Vi) _search_ history, not only stepping through it linearly
# HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# [Shift-Tab] - move through the completion menu backwards
bindkey "${terminfo[kcbt]}" reverse-menu-complete

# Created by `pipx` on 2022-01-07 03:47:16
export PATH="$PATH:/Users/loki/.local/bin"

# Bat Config
# export BAT_CONFIG_PATH="~/.bat.conf"

# VIM config
# export VIMINIT="source ~/.config/vim/vimrc"
alias vim='vim -u ~/.config/vim/vimrc'

# Mercurial alias
# alias hgb="hg branch | tr -d '\n' | xclip -selection clipboard && echo \"$(xclip -selection clipboard -o)\" "

# Show all branches in a more readable way
alias hgbs="hg branches | column -t | sort"

# Same as hgbs, but additionally shows closed branches
alias hgbsc="hg branches -c | column -t | sort"

# Prune all the packages in an environment
alias prune_env='pip freeze | xargs pip uninstall -y'

# Custom utils alias
alias ctags="`brew --prefix`/bin/ctags"
alias c='clear'
alias vc='open -a "Visual Studio Code"'
alias activate='source env/bin/activate'
snap() {
    if [ -f "env/bin/activate" ]; then
        source 'env/bin/activate'
    else
        source '.env/bin/activate'
    fi
}

setenv() {
  # Show env vars
  grep -v '^#' .env

  # Export env vars
  export $(grep -v '^#' .env | xargs)
}

# File Download
alias get='curl --continue-at - --location --progress-bar --remote-name --remote-time'

# Quick access to the ~/.zshrc file
alias zshrc='${=EDITOR} ~/.zshrc'

alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
alias t='tail -f'

alias dud='du -d 1 -h'
alias duf='du -sh *'
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# Django Alias
alias drm='python manage.py migrate'
alias dmm='python manage.py makemigrations'
alias dcu='python manage.py createsuperuser'
alias drc='python manage.py shell'
alias drt='python manage.py test'
drs() {
    local port="${1:-8000}"
    python manage.py runserver 0.0.0.0:"$port"
}

pyclean () {
    find . -type f -name "*.py[co]" -delete
    find . -type d -name "__pycache__" -delete
}

alias cmof='find . -type f -name "*.orig" -delete'

serve2() {
    local port="${1:-8000}"
    local ip=$(ipconfig getifaddr en0)
    echo "Serving on ${ip}:${port} ..."
    python2 -m SimpleHTTPServer "$port"
}

serve() {
    local port="${1:-8000}"
    local ip=$(ipconfig getifaddr en0)
    echo "Serving on ${ip}:${port} ..."
    python3 -m http.server "$port"
}

# FZF Utils

# Quickly display a man page using fzf and fd
function fman() {
    man -k . | fzf -q "$1" --prompt='man> '  --preview $'echo {} | tr -d \'()\' | awk \'{printf "%s ", $2} {print $1}\' | xargs -r man' | tr -d '()' | awk '{printf "%s ", $2} {print $1}' | xargs -r man
}

# Install (one or multiple) selected application(s)
# using "brew search" as source input
# mnemonic [B]rew [I]nstall [P]lugin
bip() {
  local inst=$(brew search | fzf -m)

  if [[ $inst ]]; then
    for prog in $(echo $inst);
    do; brew install $prog; done;
  fi
}

# Update (one or multiple) selected application(s)
# => fzf multimode, tab to mark, enter to update
# mnemonic [B]rew [U]pdate [P]lugin
bup() {
  local upd=$(brew leaves | fzf -m)

  if [[ $upd ]]; then
    for prog in $(echo $upd);
    do; brew upgrade $prog; done;
  fi
}

# Delete (one or multiple) selected application(s)
# mnemonic [B]rew [C]lean [P]lugin (e.g. uninstall)
bcp() {
  local uninst=$(brew leaves | fzf -m)

  if [[ $uninst ]]; then
    for prog in $(echo $uninst);
    do; brew uninstall $prog; done;
  fi
}

# fkill - kill processes - list only the ones you can kill.
fkill() {
    local pid
    if [ "$UID" != "0" ]; then
        pid=$(ps -f -u $UID | sed 1d | fzf -m | awk '{print $2}')
    else
        pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')
    fi

    if [ "x$pid" != "x" ]
    then
        echo $pid | xargs kill -${1:-9}
    fi
}

# fh - repeat history
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}

cdf() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}

# fcs - get git commit sha
# example usage: git rebase -i `fcs`
fcs() {
  local commits commit
  commits=$(git log --color=always --pretty=oneline --abbrev-commit --reverse) &&
  commit=$(echo "$commits" | fzf --tac +s +m -e --ansi --reverse) &&
  echo -n $(echo "$commit" | sed "s/ .*//")
}

alias gst='git status'

function cd() {
    if [[ "$#" != 0 ]]; then
        builtin cd "$@";
        return
    fi
    while true; do
        local lsd=$(echo ".." && ls -p | grep '/$' | sed 's;/$;;')
        local dir="$(printf '%s\n' "${lsd[@]}" |
            fzf --reverse --preview '
                __cd_nxt="$(echo {})";
                __cd_path="$(echo $(pwd)/${__cd_nxt} | sed "s;//;/;")";
                echo $__cd_path;
                echo;
                ls -p -FG "${__cd_path}";
        ')"
        [[ ${#dir} != 0 ]] || return 0
        builtin cd "$dir" &> /dev/null
    done
}

# tmux
alias tma='tmux attach -t'
alias tmn='tmux new -s'

# zsh; needs setopt re_match_pcre. You can, of course, adapt it to your own shell easily.
tmuxkillf () {
    local sessions
    sessions="$(tmux ls|fzf --exit-0 --multi)"  || return $?
    local i
    for i in "${(f@)sessions}"
    do
        [[ $i =~ '([^:]*):.*' ]] && {
            echo "Killing $match[1]"
            tmux kill-session -t "$match[1]"
        }
    done
}

# tm - create new tmux session, or switch to existing one. Works from within tmux too. (@bag-man)
# `tm` will allow you to select your tmux session via fzf.
# `tm irc` will attach to the irc session (if it exists), else it will create it.
tm() {
  [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
  if [ $1 ]; then
    tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
  fi
  session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
}

# fs [FUZZY PATTERN] - Select selected tmux session
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fs() {
  local session
  session=$(tmux list-sessions -F "#{session_name}" | \
    fzf --query="$1" --select-1 --exit-0) &&
  tmux switch-client -t "$session"
}

# alternative using ripgrep-all (rga) combined with fzf-tmux preview
# This requires ripgrep-all (rga) installed: https://github.com/phiresky/ripgrep-all
# This implementation below makes use of "open" on macOS, which can be replaced by other commands if needed.
# allows to search in PDFs, E-Books, Office documents, zip, tar.gz, etc. (see https://github.com/phiresky/ripgrep-all)
# find-in-file - usage: fif <searchTerm> or fif "string with spaces" or fif "regex"
fif() {
	RG_PREFIX="rga --files-with-matches"
	local file
	file="$(
		FZF_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
			fzf --sort --preview="[[ ! -z {} ]] && rga --pretty --context 5 {q} {}" \
				--phony -q "$1" \
				--bind "change:reload:$RG_PREFIX {q}" \
				--preview-window="70%:wrap"
	)" &&
	echo "opening $file" &&
	vim "$file"
}

# ftpane - switch pane (@george-b)
ftpane() {
  local panes current_window current_pane target target_window target_pane
  panes=$(tmux list-panes -s -F '#I:#P - #{pane_current_path} #{pane_current_command}')
  current_pane=$(tmux display-message -p '#I:#P')
  current_window=$(tmux display-message -p '#I')

  target=$(echo "$panes" | grep -v "$current_pane" | fzf +m --reverse) || return

  target_window=$(echo $target | awk 'BEGIN{FS=":|-"} {print$1}')
  target_pane=$(echo $target | awk 'BEGIN{FS=":|-"} {print$2}' | cut -c 1)

  if [[ $current_window -eq $target_window ]]; then
    tmux select-pane -t ${target_window}.${target_pane}
  else
    tmux select-pane -t ${target_window}.${target_pane} &&
    tmux select-window -t $target_window
  fi
}

# ls, the common ones I use a lot shortened for rapid fire usage
# alias l='ls -lFh'     # size,show type,human readable
# alias la='ls -lAFh'   # long list,show almost all,show type,human readable
# alias lr='ls -tRFh'   # sorted by date,recursive,show type,human readable
# alias lt='ls -ltFh'   # long list,sorted by date,show type,human readable
# alias ll='ls -l'      # long list
# alias ldot='ls -ld .*'
# alias lS='ls -1FSsh'
# alias lart='ls -1Fcart'
# alias lrt='ls -1Fcrt'

(( $+commands[bat] )) && alias cat='bat'

alias ls='ls --color=auto'
alias ll='ls --group-directories-first -l'
alias la='ls --group-directories-first -l --all'
alias l='ll'
if (( $+commands[exa] )); then
    alias ls='exa --time-style long-iso'
    alias ll='ls -lgbh --git'
    alias lg='ll -G'    # List by grid
    alias llg='ll -G'
    alias la='ll -a'
    alias lag='llg -a'
    alias ldot='ll -d .*'
    alias lss='ll -s size'
    alias lst='ll -s modified'
    alias tree='ls --tree'
fi

# Safe ops. Ask the user before doing anything destructive.
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'

# matterhorn chat
alias matterhorn='~/.matterhorn-50200.15.0-Darwin-x86_64/matterhorn'

# Python Virtualenv Wrapper
# export WORKON_HOME=~/.virtualenvs
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
# source /usr/local/bin/virtualenvwrapper_lazy.sh

# postgress app
# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/10/bin

# redis app
# export PATH="/Applications/Redis.app/Contents/Resources/Vendor/redis/bin:$PATH"

# load NVM (via brew)
# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Load zlib
# export LDFLAGS="-L/usr/local/opt/zlib/lib"
# export CPPFLAGS="-I/usr/local/opt/zlib/include"

# Lang Config
# export LC_ALL=en_US.UTF-8
# export LANG=en_US.UTF-8

# Minimal Prompt theme configuration
# MNML_RPROMPT=();
# MNML_PROMPT=('mnml_cwd 1 10' branch_prompt_info mnml_ssh mnml_status mnml_keymap)

# Created by `userpath` on 2020-08-06 17:07:30
# export PATH="$PATH:/Users/oscarmcm/.local/bin"
