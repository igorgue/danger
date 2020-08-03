# danger

I've been using this color scheme for 15 years. It includes some goodies for Python. There's still some changes for Ruby and other languages that I have not yet ported to this new structure. Will do later.

![Python Screenshot](https://github.com/igorgue/danger/raw/master/screenshots/python.png)

## install

Add `colorscheme danger` to your `~/.vimrc` (Use `~/.config/.nvim/init.vim` for nvim).

### vundle
Add the following to your `~/.vimrc` file and run `PluginInstall` in Vim.

    Plugin 'igorgue/danger'

### vim-plug
Add the following to your `~/.vimrc` file and run `PlugInstall` in Vim.

    Plug 'igorgue/danger'

### pathogen

    cd ~/.vim/bundle
    git clone https://github.com/igorgue/danger.git

### manual

    cd ~/.vim/colors
    git clone git://github.com/igorgue/danger.git danger
    cp danger/colors/danger.vim .

### lightline

    let g:lightline = { 'colorscheme': 'danger' }

### gnome-terminal

    cd gnome-terminal && ./load-gnome-terminal-theme
