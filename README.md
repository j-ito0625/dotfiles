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
- latexmk / texmf symlink

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
- shell の PATH と環境変数を整理する。
