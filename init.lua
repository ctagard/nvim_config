-- CORE
require("cagard.plugins-setup")
require("cagard.core.options")
require("cagard.core.keymaps")
require("cagard.core.colorscheme")

-- PLUGINS
require("cagard.plugins.comment")
require("cagard.plugins.nvim-tree")
require("cagard.plugins.lualine")
require("cagard.plugins.telescope")
require("cagard.plugins.nvim-cmp")
require("cagard.plugins.autopairs")
require("cagard.plugins.gitsigns")
require("cagard.plugins.treesitter")
require("cagard.plugins.which-key")
require("cagard.plugins.startup")

-- LSP
require("cagard.plugins.lsp.mason")
require("cagard.plugins.lsp.lspconfig")
require("cagard.plugins.lsp.lspsaga")
require("cagard.plugins.lsp.null-ls")
require("cagard.plugins.copilot")
