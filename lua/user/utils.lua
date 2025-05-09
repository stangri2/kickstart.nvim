local M = {}

M.get_git_root = function()
  local root = vim.fn.systemlist('git rev-parse --show-toplevel')[1]
  if vim.v.shell_error ~= 0 then
    return vim.fn.getcwd()
  end
  return root
end

return M
