return {
  "hrsh7th/nvim-cmp",               -- The completion framework
  requires = {
    "L3MON4D3/LuaSnip",             -- Snippet engine
    "rafamadriz/friendly-snippets", -- Collection of snippets for multiple languages
    "saadparwaiz1/cmp_luasnip",     -- LuaSnip source for nvim-cmp
    "hrsh7th/cmp-nvim-lsp",         -- LSP source for nvim-cmp
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    -- Ensure LuaSnip is loaded with friendly snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
      }),
    })
  end,
}
