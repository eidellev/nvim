return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.codelens = {
      enabled = false, -- Disabling global codelens prevents massive workspace re-scans on open
    }

    opts.servers.vtsls = vim.tbl_deep_extend("force", opts.servers.vtsls or {}, {
      -- Set Node memory limit via environment variables to ensure the node binary inherits it
      cmd_env = {
        NODE_OPTIONS = "--max-old-space-size=16384",
      },
      settings = {
        typescript = {
          tsserver = {
            maxTsServerMemory = 16384,
            -- Do not watch huge node_modules folders
            watchOptions = {
              excludeDirectories = { "**/node_modules", "**/dist", "**/.next" },
            },
          },
          -- Disable resource-heavy CodeLens options across all functions
          referencesCodeLens = {
            enabled = false,
            showOnAllFunctions = false,
          },
          implementationsCodeLens = {
            enabled = false,
          },
        },
        javascript = {
          referencesCodeLens = { enabled = false },
          implementationsCodeLens = { enabled = false },
        },
        vtsls = {
          -- Enable project-references for monorepos (pnpm / yarn / npm workspaces)
          autoUseWorkspaceTsdk = true,
          experimental = {
            completion = {
              enableServerSideFuzzyMatch = true,
            },
          },
        },
      },
    })

    opts.servers.eslint = vim.tbl_deep_extend("force", opts.servers.eslint or {}, {
      settings = {
        workingDirectory = { mode = "location" },
      },
    })

    opts.servers.cssls = vim.tbl_deep_extend("force", opts.servers.cssls or {}, {
      capabilities = (function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true
        return capabilities
      end)(),
      settings = {
        css = {
          lint = {
            unknownAtRules = "ignore",
          },
        },
      },
    })
  end,
}
