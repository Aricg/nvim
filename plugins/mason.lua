-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright", -- Python
        "yamlls",  -- YAML
        "bashls",  -- Bash
        "gopls",   -- Go (handles Go templates too)
        "jsonls",  -- JSON
      },
    },
  },
  -- use mason-none-ls to configure Formatters/Linter installation for none-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
--    -- overrides `require("mason-null-ls").setup(...)`
--    dependencies = {
--      "williamboman/mason.nvim",
--      "nvimtools/none-ls.nvim",
--    },
    opts = {
      ensure_installed = {
        "stylua",
        "black",      -- Python formatter
        "isort",      -- Python import sorter
        "shfmt",      -- Bash formatter
        "prettier",   -- YAML and JSON formatter
        "flake8",     -- Python linter
        "shellcheck", -- Bash linter
        "pylint",
        -- add more arguments for adding more none-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        "bash", -- Bash debugger
        "go",   -- Go debugger
        -- add more arguments for adding more debuggers
      },
    },
  },
}
