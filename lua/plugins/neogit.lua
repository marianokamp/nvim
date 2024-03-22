return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration

    -- Only one of these is needed, not both.
    "nvim-telescope/telescope.nvim", -- optional
    "ibhagwan/fzf-lua", -- optional
  },
  -- config = true,
  config = function()
    require("neogit").setup({
      integrations = {
        --  diffview = true,
      },
    })
    vim.keymap.set("n", "<leader>gD", ":DiffviewOpen<CR>", { noremap = true, silent = true })
  end,
}
