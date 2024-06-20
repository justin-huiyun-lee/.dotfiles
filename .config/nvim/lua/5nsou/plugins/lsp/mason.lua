return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "clangd",
        "cssls",
        "emmet_ls",
        "gopls",
        "graphql",
        "html",
        "lua_ls",
        "prismals",
        "pyright",
        "svelte",
        "tailwindcss",
        "tsserver",
        "rust_analyzer",
        "taplo",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "goimports",
        "golangci-lint",
        "clang-format",
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "prettier",
        "stylua", -- lua formatter
        "eslint_d",
        "rustfmt",
      },
    })
  end,
}
