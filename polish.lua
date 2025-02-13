--if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.filetype.add({
  pattern = {
    [".*/templates/.*%.yaml"] = "helm", -- match any path with /templates/ and ending in .yaml
    [".*%.helm/.*%.yaml"] = "helm", -- match any path with .helm/ in it and ending in .yaml
  },
}, { prepend = true })
