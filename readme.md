install neovim
`brew install neovim`

install python 2 or 3
`brew install python` or `brew install python3`
 make sure your brewed python(3) is in your path
`which python` should produce /usr/local/bin/python

set up neovim
*to use an exsiting vim set up follow the instructions here [nvim-from-vim](https://neovim.io/doc/user/nvim.html#nvim-from-vim)

*install vimplug `curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

*install plugins `curl -fLo ~/.config/nvim/init.vim \
https://raw.githubusercontent.com/leftcoastgeek/neovim/master/init.vim`

install nerd fonts
install all fonts from the install script here: https://github.com/ryanoasis/nerd-fonts
or install one from the repo
`cd ~/Library/Fonts && curl -fLo "Meslo LG L Regular for Powerline Nerd Font Complete Mono.otf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Meslo/L/complete/Meslo%20LG%20L%20Regular%20for%20Powerline%20Nerd%20Font%20Complete%20Mono.otf`

set Iterm's font, be sure to set the font and non ascii font. -> Edit Profile -> text -> fonts

open neoVim and install plugins
* nvim . +PlugInstall


# wemux
* http://martinbrochhaus.com/pair.html
brew install wemux

*connect to wemux
`ssh pairprogger@your-public-ip`
`wemux attach`
