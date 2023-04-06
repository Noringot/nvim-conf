local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
map('n', '<C-c>', '"+y', {})
map('v', '<C-c>', '"+y', {})
map('n', '<C-v>', '"+p', {})
map('v', '<C-v>', '"+p', {})

map('i', 'jj', '<Esc>', {noremap=true})

map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})

map("i", "<S-j>", "<Esc>o", default_opts)
map("i", "<S-k>", "<Esc>O", default_opts)

-- Telescope
map('n', ',f', ':Telescope find_files<CR>', default_opts)
map('n', ',g', ':Telescope live_grep<CR>', default_opts)

-- TagBar
-- map('n', '<C-t>', ':TagbarToggle<CR>', {})

-- Автоформат + сохранение по CTRL-s , как в нормальном, так и в insert режиме
-- map('n', '<C-s>', ':Autoformat<CR>:w<CR>',  default_opts)
-- map('i', '<C-s>', '<esc>:Autoformat<CR>:w<CR>', default_opts)
