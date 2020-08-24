# danger

I've been using this color scheme for 15 years. It includes some goodies for Python. There's still some changes for Ruby and other languages that I have not yet ported to this new structure. Will do later.

![Python Screenshot](https://github.com/igorgue/danger/raw/master/screenshots/python.png)

## install

Add `colorscheme danger` to your `~/.vimrc` (Use `~/.config/.nvim/init.vim` for nvim).

### vundle
Add the following to your `~/.vimrc` file and run `PluginInstall` in Vim.

```vim
    Plugin 'igorgue/danger'
```

### vim-plug
Add the following to your `~/.vimrc` file and run `PlugInstall` in Vim.

```vim
    Plug 'igorgue/danger'
```

### pathogen

```sh
    cd ~/.vim/bundle
    git clone https://github.com/igorgue/danger.git
```

### manual

```sh
    cd ~/.vim/colors
    git clone git://github.com/igorgue/danger.git danger
    cp danger/colors/danger.vim .
```

## extras

### lightline

```vim
    let g:lightline = { 'colorscheme': 'danger' }
```

### gnome-terminal

```sh
    cd gnome-terminal && ./load-gnome-terminal-theme
```

Don't forget to add its `uuid` to the `/org/gnome/terminal/legacy/profiles:/list` d-conf value

### sublime text

Open `Preferences -> Browse Packages`, and make a directory called `Colorsublime-Themes` if it doesn't exits, inside that directory copy `danger.tmTheme`.

### bat

```sh
    mkdir -p "$(bat --config-dir)/themes"
    cd "$(bat --config-dir)/themes"
    git clone https://github.com/igorgue/danger
    bat cache --build
```

Now add this to your shell rc file (e.g.: `~/.bashrc` or `~/.zshrc`):

```sh
    export BAT_THEME="danger"
```
