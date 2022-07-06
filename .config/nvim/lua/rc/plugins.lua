local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) == 1 then
	vim.api.nvim_command("silent !git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
require("rc/packer")

return require("packer").startup(function()
  -- Packer can manage itself
  use({ "wbthomason/packer.nvim", opt = true })

  -- ColorScheme
	local colorscheme = "nightfox.nvim"
	use({
		"EdenEast/nightfox.nvim",
		event = { "VimEnter", "ColorSchemePre" },
		config = function()
			require("rc/pluginconfig/nightfox")
		end,
	})

  -- Treesitter
  use({
     "nvim-treesitter/nvim-treesitter",
     after = { colorscheme },
     -- event = "VimEnter",
     run = ":TSUpdate",
     config = function()
     	require("rc/pluginconfig/nvim-treesitter")
     end,
  })

  -- Auto Completion
  use({
    "hrsh7th/nvim-cmp",
		config = function()
			require("rc/pluginconfig/nvim-cmp")
		end,
	})
	use({ "hrsh7th/cmp-nvim-lsp", module = "cmp_nvim_lsp" })
	use({ "hrsh7th/cmp-nvim-lsp-signature-help", after = "nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lsp-document-symbol", after = "nvim-cmp" })
	use({ "hrsh7th/cmp-buffer", after = "nvim-cmp" })
	use({ "hrsh7th/cmp-path", after = "nvim-cmp" })
	use({ "hrsh7th/cmp-nvim-lua", after = "nvim-cmp" })
	use({ "hrsh7th/cmp-calc", after = "nvim-cmp" })
	use({ "ray-x/cmp-treesitter", after = "nvim-cmp" })

  -- FuzzyFinder
  use {
    'nvim-telescope/telescope.nvim',
    after = { colorscheme },
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
	    require("rc/pluginconfig/telescope")
		end,
  }
  use({
		"nvim-telescope/telescope-github.nvim",
		after = { "telescope.nvim" },
		config = function()
			require("telescope").load_extension("gh")
		end,
	})
	use({
		"nvim-telescope/telescope-ui-select.nvim",
		after = { "telescope.nvim" },
		config = function()
			require("telescope").load_extension("ui-select") end,
	})
  use({
		"nvim-telescope/telescope-packer.nvim",
		after = { "telescope.nvim" },
		config = function()
			require("telescope").load_extension("packer")
		end,
	})
  
  -- Filer
--  use {
--    'kyazdani42/nvim-tree.lua',
--    requires = {
--      'kyazdani42/nvim-web-devicons', -- optional, for file icons
--    },
--		config = function()
--	    require("rc/pluginconfig/nvim-tree")
--		end,
--  }
  use({
     "nvim-neo-tree/neo-tree.nvim",
     branch = "main",
     requires = {
       "nvim-lua/plenary.nvim",
       "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
       "MunifTanjim/nui.nvim",
     },
     after = { "nvim-window-picker" },
     config = function()
     	require("rc/pluginconfig/neo-tree")
     end,
  })
  use({
		"s1n7ax/nvim-window-picker",
		event = "VimEnter",
		config = function()
			require("rc/pluginconfig/nvim-window-picker")
		end,
	})
  
  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    after = colorscheme,
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
			require("rc/pluginconfig/lualine")
		end,
  }
  
  -- Font
	use({ "kyazdani42/nvim-web-devicons", after = colorscheme })

  -- Scrollbar
	use({
		"petertriho/nvim-scrollbar",
		requires = { { "kevinhwang91/nvim-hlslens", opt = true } },
		after = { colorscheme, "nvim-hlslens" },
	})

  -- Find
	use({
		"kevinhwang91/nvim-hlslens",
		event = "VimEnter",
	})

  -- Menu
	use({
		"sunjon/stylish.nvim",
		event = "VimEnter",
		config = function()
			require("rc/pluginconfig/stylish")
		end,
	})

  -- window
  use {'tkmpypy/chowcho.nvim'}

  -- Project
	use({
		"ahmedkhalf/project.nvim",
		event = "VimEnter",
		config = function()
			require("rc/pluginconfig/project")
		end,
	})

end)

