local cmd = vim.cmd
local exec = vim.api.nvim_exec
local g = vim.g
local opt = vim.opt


opt.colorcolumn = '80'
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.smartindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.swapfile = false
opt.showcmd = true
opt.mouse = 'a'
opt.so = 7
opt.encoding = 'utf-8'
opt.wrap = true 
opt.splitright = true
opt.undofile = true
opt.termguicolors = true

vim.api.nvim_cmd({
  cmd = 'colorscheme',
  args = {'darcula'}
}, {})

-- Не автокомментировать новые линии при переходе на новую строку
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]
