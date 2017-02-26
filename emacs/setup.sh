#/bin/bash

curl -L https://github.com/bbatsov/prelude/raw/master/utils/installer.sh | sh

cp prelude-modules.el ~/.emacs.d/prelude-modules.el
cp -r personal/* ~/.emacs.d/personal/
