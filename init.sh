#!/bin/zsh
## ZIM Setup
#First of all you have to install zsh, obviously
git clone --recursive https://github.com/Eriner/zim.git ${ZDOTDIR:-${HOME}}/.zim
#prepend the initialization templates to your configs:
setopt EXTENDED_GLOB
for template_file ( ${ZDOTDIR:-${HOME}}/.zim/templates/* ); do
	user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
	( print -n "$(<${template_file})\n$(<${user_file})" >! ${user_file} ) 2>/dev/null
done
# Set Zsh as the default shell:
chsh -s ${commands[zsh]}
cp .zimrc ~/.zimrc
## TMUX Setup
echo "alias tmux='TERM=screen-256color-bce tmux'" >> ~/.zshrc
cp .tmux.conf ~/.tmux.conf
## ALIAS SETUP
export GOPATH=$HOME/.golang
export GOBIN=$HOME/.golang/bin
alias skype="apulse skype"
## VIM Setup
cp .vimrc ~/.vimrc
mkdir -p ~/.vim
mkdir -p ~/.vimbackup
mkdir -p ~/.vim-tmp
mkdir -p ~/.vimundo
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/autoload
## PATHOGEN SETUP
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
## Plugins
git clone https://github.com/ctrlpvim/ctrlp.vim ~/.vim/bundle/ctrlp.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree.git
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/mattn/webapi-vim ~/.vim/bundle/webapi-vim
git clone https://github.com/mhinz/vim-startify ~/.vim/bundle/vim-startify
git clone git://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
git clone https://github.com/jistr/vim-nerdtree-tabs.git ~/.vim/bundle/vim-nerdtree-tabs
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
git clone https://github.com/airblade/vim-gitgutter ~/.vim/bundle/vim-gitgutter
git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/easymotion/vim-easymotion ~/.vim/bundle/vim-easymotion
git clone https://github.com/csexton/trailertrash.vim  ~/.vim/bundle/trailertrash.vim
git clone git://github.com/wellle/tmux-complete.vim.git ~/.vim/bundle/tmux-complete.vim
git clone https://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar
git clone git://github.com/godlygeek/tabular.git ~/.vim/bundle/tabular
git clone git://github.com/shawncplus/phpcomplete.vim.git ~/.vim/bundle/phpcomplete.vim
git clone https://github.com/othree/javascript-libraries-syntax.vim ~/.vim/bundle/javascript-libraries-syntax.vim
git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe
cp -R colors ~/.vim/
cp -R plugin ~/.vim/
cp -R after ~/.vim/
echo "##### Remember to execute the install file: ~/.vim/bundle/YouCompleteMe/install.sh #####"
echo "##### Remember to execute in vim :HelpTags #####"
echo "##### Remember to install go-vim binaries #####"
echo "############## FINISH #################"
