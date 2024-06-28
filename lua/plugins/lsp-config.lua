return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local util = require("lspconfig.util")

      -- Format on Save
      local format_on_save = function(client, buffer)
        if client.server_capabilities.documentFormattingProvider then
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = buffer,
            callback = function()
              vim.lsp.buf.format({ bufnr = buffer })
            end,
          })
        end
      end

      -- Lua LSP (Stylua)
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            format = {
              enable = true,
              defaultConfig = {
                quote_style = "double",
              },
            },
          },
        },
        on_attach = function(client, buffer)
          format_on_save(client, buffer)
        end,
      })

      -- Python (Black)
      lspconfig.pyright.setup({
        on_attach = function(client, buffer)
          format_on_save(client, buffer)
        end,
      })

      -- Ruff LSP
      lspconfig.ruff_lsp.setup({
        on_attach = function(client, buffer)
          format_on_save(client, buffer)
        end,
      })
      -- HTML LSP
      lspconfig.html.setup({
        on_attach = function(client, buffer)
          format_on_save(client, buffer)
        end,
      })
    end,
  },
}
