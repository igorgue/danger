# danger

I've been using this color scheme for 15 years. It includes some goodies for Python and CSharp. There's still some changes for Ruby, Nim, Go, Rust and other languages that I have not yet ported to this new structure. Will do later. Even though it's a VIM theme, I also made versions for: Visual Studio Code, Sublime Text, TextMate, Gedit and GTKSourceView based editors, Gnome Terminal Color Schemes and VIM statuses Lightline I wan't every editor I use or stumble uppon to have the same color scheme.

![Python Screenshot](https://github.com/igorgue/danger/raw/master/screenshots/python.png)

![All Editors Screenshot](https://github.com/igorgue/danger/raw/master/screenshots/all.png)

## vim

As usual install on Vim is different, depends on what package management you use, or if you do nvim (like myself). Here's how to install:

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

Add `colorscheme danger` to your `~/.vimrc` (Use `~/.config/.nvim/init.vim` for nvim). To configure it on startup.

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

Open `Preferences -> Browse Packages`, and make a directory called `Colorsublime-Themes` if it doesn't exits, inside that directory copy `themes/danger.tmTheme`.

### textmate

I'm unsure how to install it but the color theme is based on its syntax so it's `themes/danger.tmTheme` let me know how it looks.

### visual studio code

Copy the root directory to `~/.vscode/extensions/`

```sh
mkdir -p ~/.vscode/extensions
cp -r danger ~/.vscode/extensions/
```

Will publish later, I do not use vscode that much

### gedit

Add `gtksourceview-4/danger.xml` on `Preferences / Font & Colors` using the `+`.

### bat

```sh
mkdir -p "$(bat --config-dir)/themes"
cd "$(bat --config-dir)/themes"
git clone https://github.com/igorgue/danger
bat cache --build
```

Now add this to your shell rc file (e.g.: `~/.bashrc` or `~/.zshrc`):

This will also work for the `fzf` plugin on vim, just make sure your vim uses the same shell.

```sh
export BAT_THEME="danger"
```
