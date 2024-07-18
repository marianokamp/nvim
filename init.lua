-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.api.nvim_create_user_command("LuaSnipList", function()
  print(vim.inspect(require("luasnip").snippets))
end, {})

-- Turn the diagnostics into floating window with borders
vim.diagnostic.config({
  virtual_text = false,
  float = { border = "rounded" },
})
--vim.g.lazyvim_python_lsp = "pyright"
--vim.g.lazyvim_python_ruff = "ruff_lsp"
vim.o.updatetime = 10000
vim.o.shortmess = vim.o.shortmess:gsub("c", "")

require("lualine").setup({
  sections = {
    lualine_x = {
      {
        require("noice").api.statusline.mode.get,
        cond = require("noice").api.statusline.mode.has,
        color = { fg = "#ff9e64" },
      },
    },
  },
})
