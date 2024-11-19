--local keymap = vim.api.nvim_set_keymap

vim.keymap.set("i", "{", "{}<Esc>ha", opts)
vim.keymap.set("i", "[", "[]<Esc>ha", opts)
vim.keymap.set("i", "(", "()<Esc>ha", opts)
--
--vim.keymap.set("n", "f", ":Files ~/Documents<CR>", opts)
--vim.keymap.set("n", "<F3>",":Files ~/.config<CR>", opts)

--vim.keymap.set("n", "<leader>n" ,":NERDTreeFocus<CR>", opts)
--vim.keymap.set("n", "<C-n>", ":NERDTree<CR>", opts)
vim.keymap.set("n", "<C-t>", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>f", ":NvimTreeFindFile", opts)

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", opts)
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", opts)
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", opts)
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", opts)
--vim.keymap.set("n", "<space>", "<leader>", opts)
vim.keymap.set("n", "<C-q>", "<C-w><q>", opts)

vim.keymap.set("n", "<left>", "<nop>", opts)
vim.keymap.set("n", "<right>", "<nop>", opts)
vim.keymap.set("n", "<up>", "<nop>", opts)
vim.keymap.set("n", "<down>", "<nop>", opts)

vim.keymap.set("i", "<left>", "<nop>", opts)
vim.keymap.set("i", "<right>", "<nop>", opts)
vim.keymap.set("i", "<up>", "<nop>", opts)
vim.keymap.set("i", "<down>", "<nop>", opts)

vim.keymap.set("n", "q:", "<nop>", opts)

vim.g.mapleader=" "

vim.keymap.set("i", "<M-h>", "<left>", opts)
vim.keymap.set("i", "<M-j>", "<down>", opts)
vim.keymap.set("i", "<M-k>", "<up>", opts)
vim.keymap.set("i", "<M-l>", "<right>", opts)

vim.keymap.set("n", "<C-v>", ":vsplit<CR>", opts)
vim.keymap.set("n", "<C-c>", ":split<CR>", opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', 'c', builtin.commands, { desc = 'Telescope help tags' })

--local function my_on_attach(bufnr)
  --local api = require "nvim-tree.api"

 -- local function opts(desc)
   -- return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  --end

  -- default mappings
 -- api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
--  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))
  --vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
--end

-- pass to setup along with your other options
--require("nvim-tree").setup {
  ---
--  on_attach = my_on_attach,
  ---
--}
