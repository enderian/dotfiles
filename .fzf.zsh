# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

# Git bonanza
# -----------
fco() {
  local branches target
  branches=$(git --no-pager branch --all \
	  --format="%(if)%(HEAD)%(then)%(else)%(if:equals=HEAD)%(refname:strip=3)%(then)%(else)%1B[0;34;1mbranch%09%1B[m%(refname:short)%(end)%(end)")
  target=$(
    echo "$branches" |
    fzf --no-hscroll --no-multi -n 2 \
        --ansi --preview="git show --color=always '..{2}' | diff-so-fancy") || return
  git checkout $(awk '{print $2}' <<<"$target" )
}
