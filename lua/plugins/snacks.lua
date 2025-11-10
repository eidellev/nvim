return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                position = "right",
              },
            },
            -- show everything, including gitignored files
            filtered_items = {
              git_ignore = false,
            },
          },
        },
      },
    },
  },
}
