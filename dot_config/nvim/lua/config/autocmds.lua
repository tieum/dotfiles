-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- Run hclfmt on .hcl files after save
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.hcl" },
  command = "!terragrunt hclfmt %",
})

-- Run terraform format on .tf & .tfvars files after save
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.tf", "*.tfvars" },
  command = "!terraform fmt %",
})

-- Run black on .py files after save
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.py" },
  command = "!black %",
})
