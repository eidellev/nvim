return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      -- Set the indicator style to 'underline'
      indicator = {
        style = "underline",
      },
    },
    highlights = {
      -- This ensures the underline color matches your theme's accent
      indicator_selected = {
        fg = { attribute = "fg", highlight = "Function" },
        sp = { attribute = "fg", highlight = "Function" },
        underline = true,
      },
      -- This keeps the text itself styled correctly while underlined
      buffer_selected = {
        bold = true,
        italic = false,
      },
    },
  },
}
