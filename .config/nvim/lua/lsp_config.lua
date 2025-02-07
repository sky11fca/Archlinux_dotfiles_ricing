require('mason').setup()
require('mason-lspconfig').setup{
	ensure_installed={"lua_ls", "clangd", "jdtls", "harper_ls", "bashls", "dockerls", "html", "java_language_server", "ts_ls", "texlab", "sqlls", "neocmake"},
}

require('lspconfig').lua_ls.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').bashls.setup{}
require('lspconfig').dockerls.setup{}
require('lspconfig').html.setup{}
--require('lspconfig').java_language_server.setup{}
--require('lspconfig').harper_ls.setup{}
require('lspconfig').jdtls.setup{}
require('lspconfig').ts_ls.setup{}
require('lspconfig').texlab.setup{}
require('lspconfig').sqlls.setup{}
require('lspconfig').neocmake.setup{}
