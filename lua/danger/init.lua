local M = {}

local default_opts = {
	style = "dark",
	kitty = false,
	alacritty = false,
}

M.alacritty_au_loaded = false
M.kitty_au_loaded = false

function M.load(opts)
	opts = vim.tbl_extend("force", default_opts, opts or {})

	local colors = {}
	if opts.style == "light" then
		colors = require("danger.colors").light
	elseif opts.style == "dark" then
		colors = require("danger.colors").dark
	end

	require("danger.theme").load(opts, colors)

	if opts.alacritty then
		vim.api.nvim_create_autocmd("Colorscheme", {
			callback = function()
        -- stylua: ignore
				if not vim.fn.executable("alacritty") then return end
        -- stylua: ignore
        if not vim.env.ALACRITTY_WINDOW_ID then return end
        -- stylua: ignore
        if not (vim.g.colors_name == "danger_dark" or vim.g.colors_name == "danger_light") then return end
        -- stylua: ignore
        if not M.alacritty_au_loaded then M.alacritty_au_loaded = true return end

				local theme_colors = {}
				if vim.g.colors_name == "danger_dark" then
					theme_colors = require("danger.colors").dark
				elseif vim.g.colors_name == "danger_light" then
					theme_colors = require("danger.colors").light
				end

				local change_alacritty_bg_cmd = "silent !alacritty msg config -w "
					.. vim.env.ALACRITTY_WINDOW_ID
					.. [[ colors.primary.background=\"\]]
					.. theme_colors.bg
					.. [[\"]]

				vim.cmd(change_alacritty_bg_cmd)
			end,
		})
	end

	if opts.kitty then
		vim.api.nvim_create_autocmd("Colorscheme", {
			callback = function()
        -- stylua: ignore
				if not vim.fn.executable("kitty") then return end
        -- stylua: ignore
        if not (vim.g.colors_name == "danger_dark" or vim.g.colors_name == "danger_light") then return end
        -- stylua: ignore
        if not M.kitty_au_loaded then M.kitty_au_loaded = true return end

				-- TODO: Implement kitty support
				-- local theme_colors = {}
				-- if vim.g.colors_name == "danger_dark" then
				-- 	theme_colors = require("danger.colors").dark
				-- elseif vim.g.colors_name == "danger_light" then
				-- 	theme_colors = require("danger.colors").light
				-- end
				-- local change_kitty_bg_cmd = "! alacritty msg config -w "
				-- 	.. vim.env.ALACRITTY_WINDOW_ID
				-- 	.. [[ colors.primary.background=\"\]]
				-- 	.. theme_colors.bg
				-- 	.. [[\"]]
				-- vim.cmd(change_kitty_bg_cmd)
			end,
		})
	end
end

function M.setup(opts)
	M.load(opts)
end

return M
