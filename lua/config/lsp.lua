local lspconfig = require("lspconfig")
-- local caps = vim.lsp.protocol.make_client_capabilities()
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.emmet_ls.setup({
	capabilities = capabilities,
	filetypes = {
		"css",
		"html",
		"javascriptreact",
		"less",
		"sass",
		"scss",
		"typescriptreact",
	},
})

