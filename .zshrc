#======== latex ========#
export PATH="/usr/local/texlive/2026basic/bin/universal-darwin:$PATH"

#======== claude ========#
alias qwen='claude --model unsloth/Qwen3.6-27B-GGUF'
alias gemma='claude --model unsloth/gemma-4-E2B-it-GGUF'

#======== ls ========#
alias ll='ls -la'
alias lt='ls -lat'

#======== prompt ========#
# 1. Enable parameter expansion and initialize vcs_info
setopt PROMPT_SUBST
autoload -Uz vcs_info add-zsh-hook
add-zsh-hook precmd vcs_info

# 2. Configure vcs_info
zstyle ':vcs_info:git:*' formats ' (%b)'

# 3. Set the prompt
PROMPT='%~${vcs_info_msg_0_} $ '