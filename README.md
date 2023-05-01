# setup-linux
Linuxでの開発環境構築に使うファイル郡。
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

5. nvimのプラグインをインストール（dein）  
nvimを開いて`:call dein#update()`を実行

6. tmuxのプラグインをインストール（tpm）  
tmuxを開いて`prefix + I`を実行

7. pythonのインストール  
[pythonダウンロードページ](https://www.python.org/downloads/)で最新のstableバージョンをチェックしてインストールする。
```
$ pyenv install 3.11.3
$ pyenv install 2.7.18
$ pyenv global 3.11.3 2.7.18
```

8. golangのインストール  
[golangダウンロードページ](https://go.dev/dl/)で最新のstableバージョンをチェックしてインストールする。
```
$ goenv install 1.20.3
$ goenv global 1.20.3
```

9. 必須ツールのセットアップが完了してからインストールするツールをインストール
```
$ make second
```

# Terminalの設定

そのうち書く。配色はnord、フォントはRickty Discord for Powerlineに設定する。
