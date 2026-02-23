# Dotfiles

Personal macOS dotfiles for a Ghostty + Zed + Neovim + tmux workflow.

## Requirements

Install the base tools first:

```bash
brew install git stow
```

## Setup

Clone this repository to your home directory and stow it:

```bash
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
stow .
```

## Notes

- Homebrew dependencies are declared in `Brewfile`.
- Generated editor state (for example Zed databases) is intentionally ignored.
