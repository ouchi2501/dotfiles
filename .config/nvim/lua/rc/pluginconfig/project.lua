require("project_nvim").setup({
  -- Show hidden files in telescope
  show_hidden = true,
})
require('telescope').load_extension('projects')

vim.api.nvim_set_keymap("n", "zp", "<Cmd>Telescope projects<CR>", { noremap = true, silent = true })

