# Setup fzf
# ---------
if [[ ! "$PATH" == */public/home/jc/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/public/home/jc/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/public/home/jc/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/public/home/jc/.fzf/shell/key-bindings.zsh"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!{.git,node_modules,miniconda3,.vscode}/*" 2> /dev/null'
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null ||bat --style=numbers --color=always {}|| tree -C {}) 2> /dev/null | head -200'"
