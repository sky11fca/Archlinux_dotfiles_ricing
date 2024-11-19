require('plugins')
require('keymaps')

vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.mouse=c
vim.opt.linebreak=true
--vim.opt.termguicolors=false
vim.opt.cursorline=true
vim.opt.splitright=true
mapleader='<Space>'



--vim.opt['default-terminal']="screen-256color"
--vim.opt['default-overrides']=",*256col*:RGB"

vim.cmd[[colorscheme solarized]]

require('notify')('Welcome to the new era: ERA3')
