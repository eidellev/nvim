return {
  "stevearc/aerial.nvim",
  opts = {
    backends = { "treesitter", "lsp" },
    manage_folds = false,
    layout = { default_direction = "left" },
    treesitter = {
      update_delay = 200,
      -- optional: restrict which nodes count as symbols
      filter_kind = false,
    },
  },
  keys = {
    { "<leader>cs", "<cmd>AerialToggle!<cr>", desc = "Toggle Symbol Outline" },
  },
}
