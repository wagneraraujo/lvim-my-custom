vim.opt.cursorline = true;
vim.opt.termguicolors = true
lvim.builtin.treesitter.matchup.enable = true
vim.opt.norelativenumber=true
vim.opt.relativenumber=true
lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "frecency")
  pcall(telescope.load_extension, "neoclip")
  -- any other extensions loading
end

