return {
  "stevearc/conform.nvim",
  event = { "BufWritePre", "BufNewFile" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>fm",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  -- Everything in opts will be passed to setup()
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      javascript = { { "prettierd", "prettier" } },
      haskell = { "ormolu" },
      go = { "gofmt", "golines", "goimports", "gotests", },
      c = { "clang-format", },
      cpp = { "clang-format" },
      ["*"] = { "codespell" },
      ["_"] = { "trim_whitespace" },
    },

    -- Set up format-on-save
    format_on_save = { timeout_ms = 500, lsp_fallback = true, async = false,},
    -- Customize formatters
    formatters = {
      shfmt = {
        prepend_args = { "-i", "2" },
      },
    },
  },
}


