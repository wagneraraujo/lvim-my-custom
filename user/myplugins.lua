

lvim.plugins = {
    {
      "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
      cmd = "TroubleToggle",
    },
  { 'bennypowers/nvim-regexplainer',
		config = function() require 'regexplainer'.setup() end,
		requires = {
			'nvim-treesitter/nvim-treesitter',
			'MunifTanjim/nui.nvim',
		}},
  {
  "aznhe21/actions-preview.nvim",
  config = function()
    vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
  end,
},
  {
  "ggandor/lightspeed.nvim",
  event = "BufRead",
},
  {
  "nacro90/numb.nvim",
  event = "BufRead",
  config = function()
  require("numb").setup {
    show_numbers = true, -- Enable 'number' for the window while peeking
    show_cursorline = true, -- Enable 'cursorline' for the window while peeking
  }
  end,
},
  {
  "sindrets/diffview.nvim",
  event = "BufRead",
},
  {
  "kevinhwang91/nvim-bqf",
  event = { "BufRead", "BufNew" },
  config = function()
  require("bqf").setup({
          auto_enable = true,
          preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
          },
          func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
          },
          filter = {
          fzf = {
          action_for = { ["ctrl-s"] = "split" },
          extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
          },
          })
  end,
},
  {
  "sindrets/diffview.nvim",
  event = "BufRead",
},
  {
  "f-person/git-blame.nvim",
  event = "BufRead",
  config = function()
    vim.cmd "highlight default link gitblame SpecialComment"
    vim.g.gitblame_enabled = 0
  end,
},
  {
  "ruifm/gitlinker.nvim",
  event = "BufRead",
  config = function()
  require("gitlinker").setup {
        opts = {
          -- remote = 'github', -- force the use of a specific remote
            -- adds current line nr in the url for normal mode
            add_current_line_on_normal_mode = true,
          -- callback for what to do with the url
            action_callback = require("gitlinker.actions").open_in_browser,
          -- print the url after performing the action
            print_url = false,
          -- mapping to call url generation
            mappings = "<leader>gy",
        },
      }
  end,
  requires = "nvim-lua/plenary.nvim",
},
  {
  "andymass/vim-matchup",
  setup = function()
    vim.g.matchup_matchparen_offscreen = { method = "popup" }
  end,
},
  {
  "nvim-telescope/telescope-fzy-native.nvim",
  run = "make",
  event = "BufRead",
},
  {
  "turbio/bracey.vim",
  cmd = {"Bracey", "BracyStop", "BraceyReload", "BraceyEval"},
  run = "npm install --prefix server",
},

  {
  "wakatime/vim-wakatime",
	"AndrewRadev/tagalong.vim",
	"sbdchd/neoformat",
	"alvan/vim-closetag",
	"leafOfTree/vim-matchtag",
   "windwp/nvim-ts-autotag",
   "mg979/vim-visual-multi",
    "aca/emmet-ls",
    "mattn/emmet-vim",
    "chentoast/marks.nvim",
    "gelguy/wilder.nvim",
    "karb94/neoscroll.nvim",
    'styled-components/vim-styled-components',
    "p00f/nvim-ts-rainbow",
    "tpope/vim-surround",
    "sitiom/nvim-numbertoggle"
  },
}
