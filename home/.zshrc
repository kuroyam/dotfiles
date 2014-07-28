# 環境変数 ------
# 文字コード
export LANG=ja_JP.UTF-8

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# cocos2d-x
# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/kuroyam/Documents/lib/cocos2d-x-3.1/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/local/bin
export PATH=$ANT_ROOT:$PATH

# Golang
export PATH=$PATH:/usr/local/go/bin

# 補間 ------
# 有効にする
autoload -Uz compinit
compinit

# 小文字でも大文字にマッチ
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


# プロンプト ------
# 色を有効にする
autoload -Uz colors
colors

# 2行で表示+空行をあける
PROMPT="
%{${fg[green]}%}%~%{${reset_color}%}
[%n]$ "
 

#履歴
#履歴を保存するファイル指定
HISTFILE="$HOME/.zsh_history"

#履歴の件数
HISTSIZE=100000
SAVEHIST=100000

#重複した履歴を保存しない
setopt hist_ignore_dups

#履歴を共有する
setopt share_history

#色の設定
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'

#履歴の検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

#cdの設定
#ディレクトリ名だけで移動する。
setopt auto_cd
