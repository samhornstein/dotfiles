#======== zsh ========#
alias zsh="~/.zshrc"

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
alias claude-local='export CLAUDE_CODE_ATTRIBUTION_HEADER="0" && \
  export ANTHROPIC_BASE_URL="http://localhost:8080" && \
  claude --model local'

#======== llm ========#
export HF_HOME=~/.cache/huggingface

alias run-gemma='llama-server \
=======
#======== llama ========#
alias run-gemma-e2b='llama-server \
    -hf unsloth/gemma-4-E2B-it-GGUF:UD-Q4_K_XL \
    --temp 1.0 \
    --top-p 0.95 \
    --top-k 64'

alias run-qwen-27b-4b='llama-server \
    -hf unsloth/Qwen3.6-27B-MTP-GGUF:UD-Q4_K_XL \
    --temp 0.6 \
    --top-p 0.95 \
    --top-k 20 \
    --min-p 0.00 \
    --spec-type draft-mtp \
    --spec-draft-n-max 2 \
    --parallel 1 \
    --threads 8 \
    --threads-batch 8 \
    --ctx-size 65536 \
    --cache-type-k q8_0 \
    --cache-type-v q8_0 \
    --cache-ram 24576 \
    --cont-batching'

alias run-qwen-27b-6b='llama-server \
    -hf unsloth/Qwen3.6-27B-MTP-GGUF:UD-Q6_K_XL \
    --temp 0.6 \
    --top-p 0.95 \
    --top-k 20 \
    --min-p 0.00 \
    --spec-type draft-mtp \
    --spec-draft-n-max 2 \
    --parallel 1 \
    --threads 8 \
    --threads-batch 8 \
    --ctx-size 65536 \
    --cache-type-k q8_0 \
    --cache-type-v q8_0 \
    --cache-ram 24576 \
    --cont-batching'

alias run-gemma-31b='llama-server \
    -hf unsloth/gemma-4-31B-it-qat-GGUF:UD-Q4_K_XL\
    --temp 1.0 \
    --top-p 0.95 \
    --top-k 64'

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

