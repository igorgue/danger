# Danger

I've been using this color scheme since 2003, re-written in Lua, and includes a `light` theme as well as the usual `dark` theme.

Even though it's a VIM theme, I also made versions for: Visual Studio Code, Sublime Text, TextMate, Gedit and GTKSourceView based editors, Gnome Terminal Color Schemes and VIM statuses Lightline I want every editor I use or stumble upon to have the same color scheme.

![nim-btw](https://github.com/igorgue/danger/assets/7014/eb8c4875-f549-4a70-9e58-bc6e545e6984)
*Nim source code example, [full config](https://github.com/igorgue/dotnvim)*

## Install

### lazy.nvim

```lua
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "danger",
    },
  },
  {
    "igorgue/danger",
    opts = {
      style = "dark",
      alacritty = true,
    },
    keys = {
      {
        "<leader>D",
        function()
          if vim.g.colors_name == "danger_dark" then
            vim.cmd("colorscheme danger_light")
          else
            vim.cmd("colorscheme danger_dark")
          end
        end,
        desc = "Toggle Danger dark mode",
      },
    },
  },
}
```
*Setups `<leader>D` as well, to switch between **dark** and **light** mode, includes a `alacritty` plugin to change alacritty background as well, works great since I only use it for nvim*

Switch to it:

```viml
colorscheme danger_dark " Dark mode
colorscheme danger_light " Light mode
colorscheme danger " Default is `danger_dark`
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

## More Screenshots

![light-dark-all](https://user-images.githubusercontent.com/7014/219985118-d756230a-5687-4d60-aa33-c48673c62b03.png)
*Themes available `danger_light` and `danger_dark`*

![light-dark-startup](https://user-images.githubusercontent.com/7014/219985119-1aa4bda6-0567-4222-866e-4e6e401db764.png)
*NVIM startup*

![light-dark-telescope](https://user-images.githubusercontent.com/7014/219985120-670c8078-12db-4024-b2e1-5ec2ad113d55.png)
*Telescope file find example*
