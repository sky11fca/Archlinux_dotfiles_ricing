--local vim = vim
--local Plug = vim.fn['plug#']


--vim.call('plug#begin')

--	Plug('vim-airline/vim-airline')
--	Plug('vim-airline/vim-airline-themes')
--	Plug('ryanoasis/vim-devicons')
--	Plug('ap/vim-css-color')
--	Plug('neoclide/coc.nvim', {['branch'] = 'release'})
--	Plug('preservim/nerdtree')
--	Plug('bluz71/vim-nightfly-colors', {['as'] = 'nightfly'})
--	Plug('lambdalisue/battery.vim')
--	Plug('ervandew/supertab')
--	Plug('junegunn/fzf.vim')
--	Plug('tpope/vim-fugitive')
--	Plug('christoomey/vim-tmux-navigator')
--	Plug('startup-nvim/startup.vim')
--	Plug('nvim-tree/nvim-tree.lua')
--	Plug('tc50cal/vim-terminal')
--vim.call('plug#end')
--vim.cmd [[packadd packer.vim]]
--require('packer').startup(function(use)

--	 use ('wbthomason/packer.nvim')

--	use ({
--  	"startup-nvim/startup.nvim",
--  	requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim"},
--  	config = function()
--    	require"startup".setup()
-- 	 end})
--	 use {
  --  'maxmx03/solarized.nvim',
    --config = function()
      --vim.o.background = 'dark'
      ---@type solarized
     -- local solarized = require('solarized')
     -- vim.o.termguicolors = true
      --vim.o.background = 'dark'
    --  solarized.setup({})
      --vim.cmd.colorscheme 'solarized'
   -- end
--}
--	 use ( "calind/selenized.nvim" )
--	 use ("EdenEast/nightfox.nvim")
--	 use ('neoclide/coc.nvim')
--	 use ("nvim-telescope/telescope.nvim")
--	 use ('rcarriga/nvim-notify')
--	 use ('nvim-tree/nvim-web-devicons') -- OPTIONAL: for file icons
--	 use ('lewis6991/gitsigns.nvim') -- OPTIONAL: for git status
--	 use ('romgrk/barbar.nvim')
--	 use('nvim-tree/nvim-tree.lua')
--	 use ('hrsh7th/nvim-cmp')
--	 use ('hrsh7th/cmp-nvim-lsp')
--	 use {
  --  		"williamboman/mason.nvim",
--		"williamboman/mason-lspconfig.nvim",
--		"neovim/nvim-lspconfig"
--	 }
--	 use {
--    		"nvim-telescope/telescope-file-browser.nvim",
--    		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
--	}
--end)

--vim.call('plug#end')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo="https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({"git","clone","--filter=blob:none", "--branch=stable",lazyrepo, lazypath})
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup({

	{
		'maxmx03/solarized.nvim',
		lazy=false,
		priority=1000,
		---@type solarized.config
		opts={},

		config=function(_, opts)
			vim.o.termguicolors=true
			vim.o.background = 'dark'
			require('solarized').setup(opts)
			vim.cmd.colorscheme 'solarized'
		end,
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies={'nvim-tree/nvim-web-devicons'}
	},

	{
		'romgrk/barbar.nvim',
		config = function()
			require("barbar").setup()
		end
	},
	{
		'nvim-telescope/telescope.nvim'
	},
	{
		'rcarriga/nvim-notify'
	},
	{
		'christoomey/vim-tmux-navigator',
		vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts),
		vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts),
		vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts),
		vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts),
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
    		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	},
	{
		'startup-nvim/startup.nvim',
		config = function()
			require("startup").setup({theme = "startify"})
		end
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
    		branch = "v3.x",
    		dependencies = {
      			"nvim-lua/plenary.nvim",
      			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      			"MunifTanjim/nui.nvim",
      			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    		},

		config = function()
			filesystem = {
			hide_dotfiles = false,
			hide_hidden = false

			}
		end
	},

	{
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate",
		
		config = function()
			local configs = require("nvim-treesitter.configs")

      			configs.setup({
          			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "java", "sql", "bash", "dockerfile" },
          			sync_install = false,
          			highlight = { enable = true },
          			indent = { enable = true },  
        		})
		end

	}

})

require('lualine').setup()
