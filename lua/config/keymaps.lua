-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>qc", ":cclose<CR>", { noremap = true, silent = true })

-- Snippet keybindings
vim.api.nvim_set_keymap(
  "i",
  "<C-k>",
  "<cmd>lua require'luasnip'.expand_or_jump()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "s",
  "<C-k>",
  "<cmd>lua require'luasnip'.expand_or_jump()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("i", "<C-j>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("s", "<C-j>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })
