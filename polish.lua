--if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add({
  pattern = {
    ["*/templates/*.yaml"] = "helm",  -- Match files in any templates directory
    ["**/templates/*.yaml"] = "helm", -- Match nested templates directories
    ["*.helm/*.yaml"] = "helm",       -- Match helm chart files
  },
}, { prepend = true }) -- Important: prepend to override default yaml detection
