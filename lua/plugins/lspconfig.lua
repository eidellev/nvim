return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.codelens = {
      enabled = true,
    }

    opts.servers.vtsls = vim.tbl_deep_extend("force", opts.servers.vtsls or {}, {
      cmd = { "vtsls", "--stdio", "--max-old-space-size=8192" },
      settings = {
        typescript = {
          tsserver = {
            maxTsServerMemory = 8192,
          },
          referencesCodeLens = {
            enabled = true,
            showOnAllFunctions = true, -- Optional: shows on internal functions too, not just exported ones
          },
          implementationsCodeLens = {
            enabled = true,
          },
        },
      },
      javascript = {
        referencesCodeLens = { enabled = true },
        implementationsCodeLens = { enabled = true },
      },
      vtsls = {
        -- Prevent vtsls from eagerly checking status on all files
        experimental = {
          completion = {
            enableServerSideFuzzyMatch = true,
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
