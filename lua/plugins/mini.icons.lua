return {
  {
    "nvim-mini/mini.icons",
    opts = {
      extension = {
        css = { glyph = "", hl = "MiniIconsPurple" }, -- Replace with your desired icon
        less = { glyph = "", hl = "MiniIconsBlue" }, -- Replace with your desired icon
        mdx = { glyph = "", hl = "MiniIconsRed" }, -- Replace with your desired icon
        md = { glyph = "", hl = "MiniIconsBlue" }, -- Replace with your desired icon
      },
      file = {
        ["README.md"] = { glyph = "󰈙", hl = "MiniIconsGrey" },
      },
    },
  },
}
