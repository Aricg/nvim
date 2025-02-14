-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.filetype.add {
  extension = {
    tpl = "gotmpl", -- Set .tpl files as Go templates
  },
  pattern = {
    [".*/templates/.*%.yaml"] = "helm",
    [".*%.helm/.*%.yaml"] = "helm",
  },
  prepend = true, -- Move inside the main table
}
