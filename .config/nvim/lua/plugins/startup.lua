return
{
    'startup-nvim/startup.nvim',
    config = function()
        require("startup").setup({theme = "startify"})
    end
}