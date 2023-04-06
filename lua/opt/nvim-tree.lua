vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local config = {
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
}

require("nvim-tree").setup(config)

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

