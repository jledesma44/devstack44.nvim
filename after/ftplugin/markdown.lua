vim.opt.spell = true
vim.opt.number = false
vim.cmd ':Goyo 80x80%'

-- Check if Pencil is actually loaded before calling it
if vim.fn.exists ':Pencil' == 2 then
  vim.cmd 'PencilSoft'
end
