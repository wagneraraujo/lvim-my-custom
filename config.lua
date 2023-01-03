-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme = "lunar"
lvim.leader = ","
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-Right>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<C-Left>"] = ":BufferLineCyclePrev<CR>"

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"c",
	"javascript",
	"json",
	"lua",
	"python",
	"typescript",
	"tsx",
	"css",
	"rust",
	"java",
	"yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
lvim.lsp.installer.setup.ensure_installed = {
    "sumneko_lua",
    "jsonls",
  "tsserver",
}

-- -- set additional linters


-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })

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
-- lvim --headless +'lua require("lvim.utils").generate_settings()' +qa && sort -o lv-settings.lua{,}
-- require('config.trouble')
-- require('config.lsp')
-- require('config.utils')
require('config.options')
-- require('user.keymaps')
-- require('user.vim')
