-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "dbout" },
  desc = "terraform/hcl commentstring configuration",
  command = "setlocal nofoldenable",
})

-- Disable autoformat for java files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "java" },
  callback = function()
    vim.b.autoformat = false
  end,
})
