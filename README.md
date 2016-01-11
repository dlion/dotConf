# dotConf
My dot configuration files

## Setup
```sh
sh init.sh
```

Open a new terminal and finish optimization (this is only needed once, hereafter it will happen upon desktop/tty login):
```sh
source ${ZDOTDIR:-${HOME}}/.zlogin
```

```
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer --gocode-completer --tern-completer
```

Open VIM
```
:HelpTags
:GoInstallBinaries
```
