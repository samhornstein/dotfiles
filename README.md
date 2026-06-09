# dotfiles

## Shell

Copy `.env.example` to `~/.env` and fill in your secrets:
```bash
cp ~/repos/dotfiles/.env.example ~/.env
```

Symlink git repo `.zshrc` to root directory and reload shell:
```bash
ln -sf ~/repos/dotfiles/.zshrc ~/.zshrc && \
source ~/.zshrc
```

Secrets in `~/.env` are automatically loaded and exported by `.zshrc`.

## Homebrew

Install packages from the `Brewfile`:
```bash
brew bundle --file=~/repos/dotfiles/Brewfile
```

Dump currently installed packages back into the `Brewfile`:
```bash
brew bundle dump --file=~/repos/dotfiles/Brewfile --force
```
