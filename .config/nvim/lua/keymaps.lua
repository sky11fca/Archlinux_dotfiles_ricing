--local keymap = vim.api.nvim_set_keymap

vim.keymap.set("i", "{", "{}<Esc>ha", opts)
vim.keymap.set("i", "[", "[]<Esc>ha", opts)
vim.keymap.set("i", "(", "()<Esc>ha", opts)
--
--vim.keymap.set("n", "f", ":Files ~/Documents<CR>", opts)
--vim.keymap.set("n", "<F3>",":Files ~/.config<CR>", opts)

vim.keymap.set("n", "<leader>n" ,":NERDTreeFocus<CR>", opts)
vim.keymap.set("n", "<C-n>", ":NERDTree<CR>", opts)
vim.keymap.set("n", "<C-t>", ":NERDTreeToggle<CR>", opts)
vim.keymap.set("n", "<C-f>", ":NERDTreeFind<CR>", opts)

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", opts)
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", opts)
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", opts)
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", opts)
vim.keymap.set("n", "<space>", "<leader>", opts)

vim.keymap.set("n", "<C-v>", ":vsplit<CR>", opts)
vim.keymap.set("n", "<C-c>", ":split<CR>", opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', 'c', builtin.commands, { desc = 'Telescope help tags' })
