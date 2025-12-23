return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true, -- Enable inline blame
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- end of line
      delay = 500, -- delay in ms before blame appears
      ignore_whitespace = true,
    },
    current_line_blame_formatter = "<author>, <author_time:%R> • <summary> • <abbrev_sha>",
  },
}
