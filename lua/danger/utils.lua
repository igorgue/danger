local M = {}

M.set_highlight = function(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

return M
