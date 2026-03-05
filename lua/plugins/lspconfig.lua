return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.servers.vtsls = vim.tbl_deep_extend("force", opts.servers.vtsls or {}, {
      settings = {
        typescript = {
          tsserver = {
            maxTsServerMemory = 8192,
          },
        },
      },
    })

    opts.servers.eslint = vim.tbl_deep_extend("force", opts.servers.eslint or {}, {
      settings = {
        workingDirectory = { mode = "location" },
      },
    })
  end,
}
