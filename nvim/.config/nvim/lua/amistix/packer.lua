vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
  	'nvim-tree/nvim-tree.lua',
  	requires = {
    		'nvim-tree/nvim-web-devicons', -- optional
  	},
  }
  use { "catppuccin/nvim", as = "catppuccin" }

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  use({
    'Bekaboo/dropbar.nvim',
    requires = {
      'nvim-telescope/telescope-fzf-native.nvim',
      run = 'make'
    },
    config = function ()
      local dropbar_api = require('dropbar.api')
      vim.keymap.set('n', '<Leader>;', dropbar_api.pick, { desc = 'Pick symbols in winbar' })
      vim.keymap.set('n', '[;', dropbar_api.goto_context_start, { desc = 'Go to start of current context' })
      vim.keymap.set('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
    end
  })

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  use {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function ()
        local function default_header()
    return {
        '', '', '',
        ' ██████╗ ███████╗███╗   ██╗███████╗███████╗██╗███████╗',
        '██╔════╝ ██╔════╝████╗  ██║██╔════╝██╔════╝██║██╔════╝',
        '██║  ███╗█████╗  ██╔██╗ ██║█████╗  ███████╗██║███████╗',
        '██║   ██║██╔══╝  ██║╚██╗██║██╔══╝  ╚════██║██║╚════██║',
        '╚██████╔╝███████╗██║ ╚████║███████╗███████║██║███████║',
        ' ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝╚══════╝╚═╝╚══════╝',
        '', '', ''
    }
end

require("dashboard").setup {
    theme = 'doom',
    config = {
        header = default_header(),
        center = {
            {
                icon = '󰈞 ',
                icon_hl = 'Title',
                desc = 'Find files',
                desc_hl = 'String',
                key = 'f',
                keymap = 'SPC f f',
                key_hl = 'Number',
                action = ':Telescope find_files'
            }, {
				icon = '󰱾 ',
                icon_hl = 'Title',
                desc = 'Open recently',
                desc_hl = 'String',
                key = 'r',
                keymap = 'SPC f r',
                key_hl = 'Number',
                action = ':Telescope oldfiles'
            }, {
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Find text',
                desc_hl = 'String',
                key = 'w',
                keymap = 'SPC f w',
                key_hl = 'Number',
                action = ':Telescope live_grep'
            }, {
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Git Braches',
                desc_hl = 'String',
                key = 'b',
                keymap = 'SPC g b',
                key_hl = 'Number',
                action = ':Telescope git_branches'
            }

        }
    }
} end,
    requires = {'nvim-tree/nvim-web-devicons'}
  }
end)
