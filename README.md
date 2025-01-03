# setup-linux
Linuxでの開発環境構築用。
主にWSL2で新しい環境を構築するときに使用する。

# 設定手順
## 1. GitHub準備

どうせ毎回環境構築方法を微修正するので最初から編集前提でcloneする。

1. 鍵の生成とssh-agent登録
```
$ ssh-keygen -t ed25519

# Could not open a connection to your authentication agent. と表示されたときには実行する。
$ eval `ssh-agent`

$ ssh-add ~/.ssh/id_ed25519
```

2. GitHubに鍵を登録する  
[鍵登録ページ](https://github.com/settings/keys)

3. git clone
```
$ git clone git@github.com:kento-m/setup-linux.git
```

4. gitの設定
```
$ git config --global user.name "kento-m"
```

## 2. インストール

1. 構築するディストリビューションに合わせて移動（例はubuntu）
```
$ cd ~/setup-linux/ubuntu
```

2. makeのインストール
```
# ubuntu
$ sudo apt install make
```

3. 必須ツールのインストール
```
$ make first
```

4. ターミナルの新しいセッションを開始する  
zshに切り替えるために新規タブで新しいセッションを開始する。  
たまに設定ミスでターミナルが動かなくなるので既存のセッションは残しておく。

5. nvimのプラグインをインストール（lazy.nvim）  
nvimを開くと自動でプラグインのインストールが始まる。  
さらにlspをインストールするために`:Mason`を実行する。
インストールするするプラグインを選択して`i`を押す。
（rust-analyzer, goplsはインストールする。）

6. tmuxのプラグインをインストール（tpm）  
tmuxを開いて`prefix + I`を実行

7. pythonのインストール  
[pythonダウンロードページ](https://www.python.org/downloads/)で最新のstableバージョンをチェックしてインストールする。
```
$ pyenv install 3.13.1
$ pyenv global 3.13.1
```

8. golangのインストール  
[golangダウンロードページ](https://go.dev/doc/install)で最新のstableバージョンをチェックしてインストールする。

```
$ wget https://go.dev/dl/go1.23.4.linux-amd64.tar.gz
$ sudo tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz
```

9. 必須ツールのセットアップが完了してからインストールするツールをインストール
```
$ make second
```

# Terminalの設定


配色は[nord](https://www.nordtheme.com/ports)、フォントは[CaskaydiaCove Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/CascadiaCode.zip)をダウンロードする。

# 導入検討中

- nvim
    - [telescope](https://github.com/nvim-telescope/telescope.nvim)
    - [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
    - [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
