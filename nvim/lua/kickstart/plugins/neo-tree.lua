return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- не обязательно, но рекомендуется
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "\\", ":Neotree toggle<CR>", desc = "Toggle NeoTree", silent = true }, -- Изменено на toggle
	},
	opts = {
		filesystem = {
			follow_current_file = true, -- следовать за текущим файлом
			hijack_netrw_behavior = "open_default", -- перехват netrw
			window = {
				position = "left", -- позиция окна
				width = 30, -- ширина окна
				mappings = {
					-- Удаляем или изменяем привязку для закрытия окна
					["l"] = "open_node", -- Открыть директорию и переместить фокус внутрь
				},
			},
		},
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)
		-- Автоматически открывать Neo-tree при запуске Neovim
		vim.cmd([[autocmd VimEnter * Neotree show]])
	end,
}
