local M = {}

local default_opts = {
	style = "dark",
}

M.load = function(opts)
	opts = vim.tbl_extend("force", default_opts, opts or {})

	local colors = {}
	if opts.style == "light" then
		colors = require("danger.colors").light
	elseif opts.style == "dark" then
		colors = require("danger.colors").dark
	end

	require("danger.theme").load(opts, colors)
end

M.setup = function(opts)
	M.load(opts)
end

return M
