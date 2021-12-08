# Setup fzf
# ---------
if [[ ! "$PATH" == */public/home/jc/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/public/home/jc/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/public/home/jc/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/public/home/jc/.fzf/shell/key-bindings.bash"
