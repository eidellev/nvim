return {
  "loctvl842/monokai-pro.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("monokai-pro").setup({
      -- Customize your settings here
      filter = "spectrum",
      terminal_colors = true,
      devicons = true,
      styles = {
        comment = { italic = true },
        keyword = { italic = true },
        type = { italic = true },
      },
      override = function(c)
        return {
          SnacksDashboardNormal = { bg = c.editor.background, fg = c.editor.foreground },
          SnacksDashboardDesc = { fg = c.base.dimmed1 },
          SnacksDashboardIcon = { fg = c.base.blue },
          SnacksDashboardFooter = { fg = c.base.green },
          SnacksDashboardHeader = { fg = c.base.yellow },
          SnacksDashboardSpecial = { fg = c.base.yellow, bold = true },

          SnacksTitle = { bg = c.sideBar.background, fg = c.base.yellow, bold = true },

          -- Explorer
          SnacksPickerTree = { bg = c.sideBar.background, fg = c.editorIndentGuide.background },

          -- Picker
          SnacksPicker = { bg = c.sideBar.background, fg = c.sideBar.foreground },
          SnacksPickerList = { bg = c.sideBar.background, fg = c.sideBar.foreground },
          SnacksPickerMatch = { fg = c.base.yellow, bold = true },
          SnacksPickerInputBorder = { bg = c.sideBar.background, fg = c.sideBar.foreground },
          SnacksPickerTitle = { bg = c.sideBar.background, fg = c.base.yellow, bold = true },
          SnacksPickerPrompt = { bg = c.sideBar.background, fg = c.base.blue },
          SnacksPickerBorder = { bg = c.sideBar.background, fg = c.sideBar.foreground },
          SnacksPickerTotals = { fg = c.base.dimmed3 },
          SnacksPickerDir = { fg = c.sideBar.foreground },

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
