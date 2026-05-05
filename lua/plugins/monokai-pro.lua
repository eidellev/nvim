return {
  "loctvl842/monokai-pro.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("monokai-pro").setup({
      -- Customize your settings here
      filter = "spectrum", -- Available: "classic" | "octagon" | "pro" | "machine" | "ristretto" | "spectrum"
      terminal_colors = true,
      devicons = true,
      styles = {
        comment = { italic = true },
        keyword = { italic = true },
        type = { italic = true },
      },
      override = function(c)
        return {
          -- Main Picker UI
          SnacksPicker = { bg = c.editor.background, fg = c.editor.foreground },
          SnacksPickerBorder = { fg = c.base.white, bg = c.editor.background },

          SnacksPickerInput = { bg = c.editor.background, fg = c.base.cyan },
          SnacksPickerPrefix = { fg = c.base.magenta, bold = true },
          SnacksPickerPrompt = { fg = c.base.yellow, italic = true },
          SnacksPickerTitle = { fg = c.base.yellow, bold = true },

          SnacksPickerTree = { fg = c.base.yellow, bg = c.editor.background },

          -- List & Selection
          SnacksPickerListCursorLine = { bg = c.editor.findMatchBackground, bold = true },
          SnacksPickerMatch = { fg = c.base.yellow, bold = true },

          OilDir = { fg = c.base.green, bold = true },
          OilFile = { fg = c.base.white },
          OilLink = { fg = c.base.blue, italic = true },

          OilCopy = { fg = c.base.green },
          OilMove = { fg = c.base.yellow },
          OilChange = { fg = c.base.yellow },
          OilCreate = { fg = c.base.green },
          OilDelete = { fg = c.base.red },

          OilPermissionRead = { fg = c.base.blue },
          OilPermissionWrite = { fg = c.base.yellow },
          OilPermissionExecute = { fg = c.base.green },

          NormalFloat = { bg = c.editor.background },
          FloatBorder = { bg = c.editor.background, fg = c.base.white },
        }
      end,
    })

    -- Apply the theme
    vim.cmd.colorscheme("monokai-pro")
  end,
}
