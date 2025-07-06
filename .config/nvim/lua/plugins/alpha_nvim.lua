return{
	'goolord/alpha-nvim',
	requires = {
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		local startify = require("alpha.themes.startify")
		startify.file_icons.provider = "devicons"
		require("alpha").setup(startify.config)

		startify.section.header.val = {
			[[  ******** **   ** **    ** **      ** ** ****     ****]],
			[[ **////// /**  ** //**  ** /**     /**/**/**/**   **/**]],
			[[/**       /** **   //****  /**     /**/**/**//** ** /**]],
			[[/*********/****     //**   //**    ** /**/** //***  /**]],
			[[////////**/**/**     /**    //**  **  /**/**  //*   /**]],
			[[       /**/**//**    /**     //****   /**/**   /    /**]],
			[[ ******** /** //**   /**      //**    /**/**        /**]],
			[[////////  //   //    //        //     // //         // ]],
		}
	end,
}
