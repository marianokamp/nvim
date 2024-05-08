-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Turn the diagnostics into floating window with borders
vim.diagnostic.config({
  virtual_text = false,
  float = { border = "rounded" },
})
--vim.g.lazyvim_python_lsp = "pyright"
--vim.g.lazyvim_python_ruff = "ruff_lsp"
