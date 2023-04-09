-- import whichkey safely
local whichkey_setup, whichkey = pcall(require, "which-key")
if not whichkey_setup then
	return
end

vim.o.timeout = true
vim.o.timeoutlen = 300

local conf = {
	window = {
		border = "single", -- none, single, double, shadow
		position = "bottom", -- bottom, top
	},
}

local opts = {
	mode = "n", -- Normal mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = false, -- use `nowait` when creating keymaps
}

local mappings = {
	["w"] = { "<cmd>update!<CR>", "Save" },
	["q"] = { "<cmd>q!<CR>", "Quit" },

	f = {
		name = "Telescope",
		f = { "<cmd>Telescope find_files<cr>", "Find Files" },
		s = { "<cmd>Telescope live_grep<cr>", "Find String in CWD" },
		c = { "<cmd>Telescope grep_string<cr>", "Find string under cursor" },
		b = { "<cmd>Telescope buffers<cr>", "List open buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "List Available Help Tags" },
	},

	g = {
		name = "Git",
		c = { "<cmd>Telescope git_commits<cr>", "List all commits" },
		fc = { "<cmd>Telescope git_bcommits<cr>", "List git commits for current file." },
		b = { "<cmd>Telescope git_branches<cr>", "List git branches" },
		s = { "<cmd>Telescope git_status<cr>", "List current changes per file with diff preview" },
	},

	t = {
		name = "Tabs",
		o = { ":tabnew<CR>", "Open New Tab" },
		x = { ":tabclose<CR>", "Close Current Tab" },
	},

	s = {
		name = "Windows",
		v = { "<C-w>v", "Split window vertically" },
		h = { "<C-w>s", "Split window horizontally" },
		e = { "<C-w>=", "Make Split Windows Equal Width" },
		x = { ":close<CR>", "Close current split window" },
	},
}

-- configure which-key
whichkey.setup(conf)
whichkey.register(mappings, opts)
