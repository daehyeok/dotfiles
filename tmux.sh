#!/bin/bash

cd $HOME
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

if [ "$(uname)" == "Darwin" ]; then
    brew install reattach-to-user-namespace
#elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
fi

sed -E -i.bak "/C\-a/s/^/#/" ~/.tmux.conf
rm ~/.tmux.conf.bak

sed -E -i.bak "s/^tmux_conf_theme_(left|right)_separator_(main|sub).*$//g" ~/.tmux.conf.local
sed -E -i.bak "s/^#(tmux_conf_theme_(left|right)_separator_(main|sub).*$)/\1/g" ~/.tmux.conf.local
rm ~/.tmux.conf.local.bak
