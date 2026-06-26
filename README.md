# dotfiles
chezmoi で管理

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

管理しないもの:

- `~/.ssh`, `~/.aws`
- `~/.config/gh/hosts.yml`
- browser / Slack / Obsidian / VS Code profiles
- Mozc `.db`, `.lock`, `.ipc`
- shell history and logs

## TODO
- latex等の環境変数等いつか整理する．
