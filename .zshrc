#======== ls ========#
alias ll='ls -la'
alias lt='ls -lat'

#======== prompt ========#
# 1. Enable parameter expansion and initialize vcs_info
setopt PROMPT_SUBST
autoload -Uz vcs_info add-zsh-hook
add-zsh-hook precmd vcs_info

# 2. Configure vcs_info (Treat untracked files as unstaged)
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' untrackedtrue true
zstyle ':vcs_info:git:*' unstagedstr '%F{yellow}'
zstyle ':vcs_info:git:*' formats ' %F{yellow}(%u%b)%f'

# 3. Set the prompt
PROMPT='%n:%~${vcs_info_msg_0_} %# '