return {
  "kylechui/nvim-surround",
  opts = {
    keymaps = { -- customize these keymaps as needed
      visual = "S", -- Use `S` in visual mode
      visual_line = "gS", -- Use `gS` in visual line mode
      delete = "ds", -- Use `ds` to delete surrounds
      change = "cs", -- Use `cs` to change surrounds
    },
  },
}
