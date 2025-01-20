vim.opt.spell = true
vim.opt.number = false
vim.opt.linebreak = true
vim.opt.wrap = true
vim.opt.softwrap = true
vim.cmd ':PencilSoft'

-- Check if Pencil is actually loaded before calling it
if vim.fn.exists 'Pencil' == 2 then
  vim.cmd ':PencilSoft'
end
