-- ~/.config/nvim/lua/plugins/mason-lspconfig.lua
return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "pyright",
      "ruff_lsp",
      "lua_ls",
      "html",
    },
  },
}
