# dotfiles

chezmoi で管理する個人設定。

## setup

```sh
chezmoi init --apply https://github.com/j-ito0625/dotfiles.git
```

## files

- wezterm
- nvim
- starship
- gh
- btop / htop / neofetch
- mozc

## usage

```sh
chezmoi diff
chezmoi apply
chezmoi add ~/.config/foo
chezmoi cd
```

## public policy

公開 repo として扱う。秘密情報、履歴、cache、DB、cookie、machine id は置かない。

管理しないもの:

- `~/.ssh`, `~/.aws`
- `~/.config/gh/hosts.yml`
- browser / Slack / Obsidian / VS Code profiles
- Mozc `.db`, `.lock`, `.ipc`
- shell history and logs
