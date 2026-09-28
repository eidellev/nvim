return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      oxfmt = {
        -- Require at least one of oxfmt's supported config files in the project root
        cwd = require("conform.util").root_file({
          ".oxfmtrc.json",
          ".oxfmtrc.jsonc",
          "oxfmt.config.ts",
          "oxfmt.config.mts",
          -- Include Prettier configs if you use oxfmt with prettier compatibility:
          -- ".prettierrc",
          -- ".prettierrc.json",
        }),
        -- Fall back to requiring the binary to exist in PATH / node_modules
        require_cwd = true,
      },
    },
    formatters_by_ft = {
      javascript = { "oxfmt" },
      typescript = { "oxfmt" },
      javascriptreact = { "oxfmt" },
      typescriptreact = { "oxfmt" },
      json = { "oxfmt" },
    },
  },
}
