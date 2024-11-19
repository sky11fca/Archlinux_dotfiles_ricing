local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')

	Plug('vim-airline/vim-airline')
	Plug('vim-airline/vim-airline-themes')
	Plug('ryanoasis/vim-devicons')
	Plug('ap/vim-css-color')
	Plug('neoclide/coc.nvim', {['branch'] = 'release'})
--	Plug('preservim/nerdtree')
	Plug('bluz71/vim-nightfly-colors', {['as'] = 'nightfly'})
	Plug('lambdalisue/battery.vim')
	Plug('ervandew/supertab')
	Plug('junegunn/fzf.vim')
	Plug('tpope/vim-fugitive')
	Plug('christoomey/vim-tmux-navigator')
--	Plug('startup-nvim/startup.vim')
	Plug('nvim-tree/nvim-tree.lua')
--	Plug('tc50cal/vim-terminal')

--vim.cmd [[packadd packer.vim]]
require('packer').startup(function(use)

	 use ('wbthomason/packer.nvim')

	use ({
  	"startup-nvim/startup.nvim",
  	requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim"},
  	config = function()
    	require"startup".setup()
 	 end})
	 use {
    'maxmx03/solarized.nvim',
    config = function()
      vim.o.background = 'dark'
      ---@type solarized
      local solarized = require('solarized')
      vim.o.termguicolors = true
      vim.o.background = 'dark'
      solarized.setup({})
      vim.cmd.colorscheme 'solarized'
    end
}
	 use ( "calind/selenized.nvim" )
	 use ("EdenEast/nightfox.nvim")
--	 use ('neoclide/coc.nvim')
	 use ("nvim-telescope/telescope.nvim")
	 use ('rcarriga/nvim-notify')
	 use ('nvim-tree/nvim-web-devicons') -- OPTIONAL: for file icons
	 use ('lewis6991/gitsigns.nvim') -- OPTIONAL: for git status
	 use ('romgrk/barbar.nvim')
	 use('nvim-tree/nvim-tree.lua')
	 use ('hrsh7th/nvim-cmp')
	 use ('hrsh7th/cmp-nvim-lsp')
	 use {
    		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	 }
end)

vim.call('plug#end')

--vim.g['battery#update_tabline'] = 1
--vim.g['airline#extensions#battery#enabled'] = 1

--vim.g.airline_left_sep = ''
--vim.g.airline_right_sep = ''
--vim.g.airline_left_alt_sep = ''
--vim.g.airline_right_alt_sep = ''


vim.g.airline_powerline_fonts = 1
--vim.g['airline#extensions#tabline#enabled'] = 1
--vim.g['airline#extensions#tabline#left_sep'] = ' '
--vim.g['airline#extensions#tabline#left_alt_sep'] = '/'
--vim.g['airline#extensions#tabline#formatter'] = 'unique_tail'

vim.g.airline_theme='solarized'
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer" },
}
