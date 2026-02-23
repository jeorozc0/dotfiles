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

For a fresh machine, run one command:

```bash
./script/install
```

For an existing machine where files already exist, adopt first:

```bash
./script/adopt
```

Then keep everything in sync with:

```bash
./script/restow
```

## Notes

- Homebrew dependencies are declared in `homebrew/Brewfile`.
- Generated editor state (for example Zed databases) is intentionally ignored.
- Managed stow packages: `zsh`, `tmux`, `homebrew`, `nvim`, `ghostty`, `zed`.
