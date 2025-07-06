--local keymap = vim.api.nvim_set_keymap
mapleader='<Space>'
vim.keymap.set("i", "{", "{}<Esc>ha", opts)
vim.keymap.set("i", "[", "[]<Esc>ha", opts)
vim.keymap.set("i", "(", "()<Esc>ha", opts)
--
--vim.keymap.set("n", "f", ":Files ~/Documents<CR>", opts)
--vim.keymap.set("n", "<F3>",":Files ~/.config<CR>", opts)

--vim.keymap.set("n", "<leader>n" ,":NERDTreeFocus<CR>", opts)
--vim.keymap.set("n", "<C-n>", ":NERDTree<CR>", opts)
vim.keymap.set("n", "<C-e>", ":Neotree filesystem left toggle<CR>", opts)

--vim.keymap.set("n", "<C-h>", ":TmuxNavigateRight<CR>", opts)
--vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
--vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)
--vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)
--vim.keymap.set("n", "<space>", "<leader>", opts)
--vim.keymap.set("n", "<C-h>", "<C-w><C-h>", opts)
--vim.keymap.set("n", "<C-j>", "<C-w><C-j>", opts)
--vim.keymap.set("n", "<C-k>", "<C-w><C-k>", opts)
--vim.keymap.set("n", "<C-l>", "<C-w><C-l>", opts)
--vim.keymap.set("n", "<C-q>", "<C-w><q>", opts)

vim.keymap.set("n", "<C-q>", ":close<CR>", opts)

vim.keymap.set("n", "<left>", ":bn<CR>", opts)
vim.keymap.set("n", "<right>", ":bp<CR>", opts)
vim.keymap.set("n", "<up>", ":bd<CR>", opts)
vim.keymap.set("n", "<down>", "<nop>", opts)

vim.keymap.set("i", "<left>", ":bp<CR>", opts)
vim.keymap.set("i", "<right>", ":bn<CR>", opts)
vim.keymap.set("i", "<up>", ":bd<CR>", opts)
vim.keymap.set("i", "<down>", "<nop>", opts)

vim.keymap.set("n", "q:", "<nop>", opts)
vim.keymap.set("n", "/:", "<nop>", opts)

vim.keymap.set("i", "<M-h>", "<left>", opts)
vim.keymap.set("i", "<M-j>", "<down>", opts)
vim.keymap.set("i", "<M-k>", "<up>", opts)
vim.keymap.set("i", "<M-l>", "<right>", opts)

vim.keymap.set("n", "<C-a>", ":vsplit<CR>", opts)
vim.keymap.set("n", "<C-s>", ":split<CR>", opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.grep_string, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.api.nvim_set_keymap('n', '<CR>', '<cmd>FineCmdline<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>', opts)

vim.keymap.set('n', '<C-0>', ':b0<CR>', opts)
vim.keymap.set('n', '<C-1>', ':b1<CR>', opts)
vim.keymap.set('n', '<C-2>', ':b2<CR>', opts)
vim.keymap.set('n', '<C-3>', ':b3<CR>', opts)
vim.keymap.set('n', '<C-4>', ':b4<CR>', opts)
vim.keymap.set('n', '<C-5>', ':b5<CR>', opts)
vim.keymap.set('n', '<C-6>', ':b6<CR>', opts)
vim.keymap.set('n', '<C-7>', ':b7<CR>', opts)
vim.keymap.set('n', '<C-8>', ':b8<CR>', opts)
vim.keymap.set('n', '<C-9>', ':b9<CR>', opts)

vim.keymap.set('i', '<C-0>', ':b0<CR>', opts)
vim.keymap.set('i', '<C-1>', ':b1<CR>', opts)
vim.keymap.set('i', '<C-2>', ':b2<CR>', opts)
vim.keymap.set('i', '<C-3>', ':b3<CR>', opts)
vim.keymap.set('i', '<C-4>', ':b4<CR>', opts)
vim.keymap.set('i', '<C-5>', ':b5<CR>', opts)
vim.keymap.set('i', '<C-6>', ':b6<CR>', opts)
vim.keymap.set('i', '<C-7>', ':b7<CR>', opts)
vim.keymap.set('i', '<C-8>', ':b8<CR>', opts)
vim.keymap.set('i', '<C-9>', ':b9<CR>', opts)
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
