local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')

	Plug('vim-airline/vim-airline')
	Plug('vim-airline/vim-airline-themes')
	Plug('ryanoasis/vim-devicons')
	Plug('ap/vim-css-color')
	Plug('neoclide/coc.nvim', {['branch'] = 'release'})
	Plug('preservim/nerdtree')
	Plug('bluz71/vim-nightfly-colors', {['as'] = 'nightfly'})
	Plug('lambdalisue/battery.vim')
	Plug('ervandew/supertab')
	Plug('junegunn/fzf.vim')
	Plug('tpope/vim-fugitive')
--	Plug('startup-nvim/startup.vim')

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

	 use ( "calind/selenized.nvim" )
	 use ("EdenEast/nightfox.nvim")
	 use ("nvim-telescope/telescope.nvim")
	 use ('shaunsingh/solarized.nvim')
end)

vim.call('plug#end')

--vim.g['battery#update_tabline'] = 1
--vim.g['airline#extensions#battery#enabled'] = 1

vim.g.airline_left_sep = ''
vim.g.airline_right_sep = ''
vim.g.airline_left_alt_sep = ''
vim.g.airline_right_alt_sep = ''


vim.g.airline_powerline_fonts = 1
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g['airline#extensions#tabline#left_sep'] = ' '
vim.g['airline#extensions#tabline#left_alt_sep'] = '/'
vim.g['airline#extensions#tabline#formatter'] = 'unique_tail'

vim.g.airline_theme='solarized'

