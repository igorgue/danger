local M = {}

function M.set_highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

return M
