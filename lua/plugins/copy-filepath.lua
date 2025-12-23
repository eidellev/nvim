return {
  "mikko-kohtala/copy-filepath.nvim",
  -- Load on first keymap use (lazy loading)
  keys = {
    { "<leader>yp", desc = "Yank absolute path" },
    { "<leader>yr", desc = "Yank relative path" },
  },
}
