-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    -- opts variable is the default configuration table for the setup function call
    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/none-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/none-ls/builtins/diagnostics

    -- Only insert new sources, do not replace the existing ones
    -- (If you wish to replace, use `opts.sources = {}` instead of the `list_insert_unique` function)
    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- Set a formatter
      -- none_ls.builtins.formatting.stylua,
      -- none_ls.builtins.formatting.prettier,
      require("null-ls").builtins.formatting.prettier.with {
        disabled_filetypes = { "yaml", "yml" },
      },
    })
  end,
}
