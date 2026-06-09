# dotfiles

## Shell

Symlink git repo `.zshrc` to root directory and reload shell:
```bash
ln -sf ~/repos/dotfiles/.zshrc ~/.zshrc && \
source ~/.zshrc
```

## Homebrew

Install packages from the `Brewfile`:
```bash
brew bundle --file=~/repos/dotfiles/Brewfile
```

Dump currently installed packages back into the `Brewfile`:
```bash
brew bundle dump --file=~/repos/dotfiles/Brewfile --force
```
