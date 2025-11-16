-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.defer_fn(function()
  vim.cmd("colorscheme green-ocean")
end, 50)
