
# Dotfiles (managed by chezmoi)

Windows (Host) と WSL / Linux 環境の dotfiles を [chezmoi](https://www.chezmoi.io/) で管理しています。
OSごとの設定差異（Starshipの色、WezTermの設定など）は chezmoi のテンプレート機能で自動吸収されます。

## 🛠 前提条件 (Prerequisites)

### Windows (PowerShell)
```powershell
# chezmoi のインストール
winget install chezmoi

# フォントのインストール (HackGen NF が推奨)
# [https://github.com/yuru7/HackGen/releases](https://github.com/yuru7/HackGen/releases) から _NF_ 付きをDLしてインストール

```

### WSL / Linux

```bash
# chezmoi のインストール
sh -c "$(curl -fsLS get.chezmoi.io)"

```

## 🚀 インストール (Installation)

新しいマシンでのセットアップは以下のコマンド一発で完了します。

```bash
chezmoi init --apply [https://github.com/](https://github.com/)<あなたのユーザー名>/dotfiles.git

```

---

## 📝 運用・編集ガイド (Usage)

### 1. 設定を変更する (Edit)

管理下のファイルを編集する場合、直接ファイルを触らずに以下のコマンドを使います。
保存してエディタを閉じると、変更がソースディレクトリに記録されます（まだ反映はされません）。

```bash
# 例: Starshipの設定を編集
chezmoi edit ~/.config/starship.toml

```

### 2. 変更をローカルに適用してテストする (Apply)

編集内容を現在の環境（ホームディレクトリ）に反映させます。

```bash
chezmoi apply

```

> **Tip:** 何が変わるか確認したい場合は `chezmoi diff` を実行してください。

### 3. 新しいファイルを管理下に追加する (Add)

まだ管理していないファイルを追加したい場合。

```bash
chezmoi add ~/.bashrc

```

### 4. 変更を GitHub に同期する (Push)

編集・追加した設定をリモートリポジトリに送信します。

```bash
# chezmoi の管理ディレクトリに移動
chezmoi cd

# Git 操作
git add .
git commit -m "update: settings"
git push

# 元の場所に戻る
exit

```

### 5. 最新の設定を取り込む (Update)

別のマシン（例: Windowsで変更した後、WSL側で反映）で最新設定を取得する場合。
`git pull` と `chezmoi apply` を同時にやってくれます。

```bash
chezmoi update

```

---

## 📂 ディレクトリ構成

chezmoi では、実体は `~/.local/share/chezmoi` に保存されます。

* **`dot_config/`**: `~/.config/` 以下の設定ファイル
* `starship.toml.tmpl`: OS判定ロジックを含むプロンプト設定
* `wezterm/`: WezTerm設定ディレクトリ


* **`.chezmoi.toml.tmpl`**: chezmoi 自体の設定ファイル

## 🎨 環境ごとの挙動 (Starship)

自動的にOSを判定し、以下のテーマが適用されます。

| 環境 | カラー | 表記 |
| --- | --- | --- |
| **Windows** | 🟦 Blue | `WIN ... [ Hostname : WIN ]` |
| **WSL** | 🟧 Orange | `WSL ... [ Hostname : WSL ]` |
| **Linux (SSH)** | 🟪 Purple | `LINUX ... [ Hostname ]` |

```
