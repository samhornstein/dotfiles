# Load local secrets if .env exists
if [[ -f ~/.env ]]; then
  set -a
  source ~/.env
  set +a
fi

#======== PATH ========#
if [[ -d ~/.local/bin ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

#======== latex ========#
export PATH="/usr/local/texlive/2026basic/bin/universal-darwin:$PATH"

#======== claude ========#
alias claude-gemma='export ANTHROPIC_BASE_URL="http://localhost:8888" && \
  claude --model unsloth/gemma-4-E2B-it-GGUF'

alias claude-qwen='export ANTHROPIC_BASE_URL="http://localhost:8080" && \
  claude --model unsloth/Qwen3.6-27B-MTP-GGUF'

#======== unsloth ========#
alias unsloth-gemma='unsloth run --model unsloth/gemma-4-E2B-it-GGUF:UD-Q4_K_XL'

alias unsloth-qwen='unsloth run \
  --model unsloth/Qwen3.6-27B-MTP-GGUF:UD-Q4_K_XL \
  --temp 1.0 \
  --top-p 0.95 \
  --top-k 20 \
  --min-p 0.00 \
  --spec-type draft-mtp --spec-draft-n-max 2'
  
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
