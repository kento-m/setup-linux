# setup-linux
Linuxでの開発環境構築に使うファイル郡。
主にWSL2で新しい環境を構築するときに使用する。

# 利用手順
## GitHub準備

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
$ git git@github.com:kento-m/setup-linux.git
```

4. gitの設定
```
$ git config --global user.name "kento-m"
```
