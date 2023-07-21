local M = {}

vim.g.danger_plugins_loaded = false

local default_opts = {
  style = "dark",
  alacritty = false,
  kitty = false,
}

local function theme_colors()
  if vim.g.colors_name == "danger_light" then
    return require("danger.colors").light
  elseif vim.g.colors_name == "danger_red_and_black" then
    return require("danger.colors").red_and_black
  elseif vim.g.colors_name == "danger_mnml" then
    return require("danger.colors").mnml
  end

  return require("danger.colors").dark
end

local function add_plugins(opts)
  -- stylua: ignore
  if vim.g.danger_plugins_loaded then return end

  if opts.alacritty then
    opts.cond = function()
      return vim.fn.executable("alacritty") and vim.env.ALACRITTY_WINDOW_ID
    end

    opts.run = function()
      local change_alacritty_bg_cmd = "silent !alacritty msg config -w "
        .. vim.env.ALACRITTY_WINDOW_ID
        .. [[ colors.primary.background=\"\]]
        .. theme_colors().bg
        .. [[\"]]

      vim.cmd(change_alacritty_bg_cmd)
    end

    vim.api.nvim_create_autocmd("Colorscheme", {
      callback = function()
        -- stylua: ignore
        if not opts.cond() then return end

        opts.run()
      end,
    })
  end

  if opts.kitty then
    opts.cond = function()
      return vim.fn.executable("kitty") and vim.env.KITTY_WINDOW_ID
    end

    opts.run = function()
      local change_kitty_bg_cmd = "silent !kitty @ set-colors " .. [[background=\]] .. theme_colors().bg

      vim.cmd(change_kitty_bg_cmd)
    end

    vim.api.nvim_create_autocmd("Colorscheme", {
      callback = function()
        -- stylua: ignore
        if not opts.cond() then return end

        opts.run()
      end,
    })
  end

  vim.g.danger_plugins_loaded = true
end

function M.load(opts)
  if vim.g.danger_loaded then
    opts = vim.tbl_extend("force", vim.g.danger_opts, opts or {})
  else
    opts = vim.tbl_extend("force", default_opts, opts or {})

    vim.g.danger_opts = opts
  end

  local colors = {}
  if opts.style == "light" then
    colors = require("danger.colors").light
  elseif opts.style == "dark" then
    colors = require("danger.colors").dark
  elseif opts.style == "red_and_black" then
    colors = require("danger.colors").red_and_black
  elseif opts.style == "mnml" then
    colors = require("danger.colors").mnml
  end

  require("danger.theme").load(opts, colors)

  add_plugins(opts)

  vim.g.danger_loaded = true
end

function M.setup(opts)
  M.load(opts)
end

return M
