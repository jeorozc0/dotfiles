# Dotfiles

Personal macOS dotfiles for a Ghostty + Zed + Neovim + tmux workflow.

## Requirements

Install the base tools first:

```bash
brew install git stow
```

## Packages

- `zsh` -> `~/.zshrc`
- `tmux` -> `~/.tmux.conf`
- `homebrew` -> `~/Brewfile`
- `nvim` -> `~/.config/nvim`
- `ghostty` -> `~/.config/ghostty`
- `zed` -> `~/.config/zed`

## Setup

Clone this repository to your home directory:

```bash
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
```

Stow the packages you want:

```bash
stow --target="$HOME" zsh tmux homebrew nvim
```

For Ghostty and Zed on an existing machine (where files already exist), adopt first:

```bash
stow --target="$HOME" --adopt ghostty zed
```

Then keep everything in sync with:

```bash
stow --target="$HOME" --restow zsh tmux homebrew nvim ghostty zed
```

## Notes

- Homebrew dependencies are declared in `homebrew/Brewfile`.
- Generated editor state (for example Zed databases) is intentionally ignored.
