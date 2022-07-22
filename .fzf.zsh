# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jiangchen/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/jiangchen/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jiangchen/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$HOME/.key-bindings.zsh"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!{.git,node_modules,miniconda3,.vscode}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND='rg --files --no-ignore --hidden --follow --glob "!{node_modules,miniconda3,.*}/*" 2> /dev/null'
export FZF_COMPLETION_OPTS
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null ||bat --style=numbers --color=always {}|| tree -C {}) 2> /dev/null|| cat | head -200'"