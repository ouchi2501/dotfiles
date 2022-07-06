require("telescope").setup({
  pickers = {
    find_files = {
      theme = "dropdown",
    }
  },
})
vim.api.nvim_set_keymap("n", "z", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "z", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"z<Leader>",
	"<Cmd>Telescope find_files hidden=true<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<Leader>;", "<Cmd>Telescope git_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "z;", "<Cmd>Telescope git_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<Leader>.",
	"<Cmd>Telecwoc diagnosticsscope find_files<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "zs", "<Cmd>Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "zb", "<Cmd>Telescope buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "zh", "<Cmd>Telescope help_tags<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "zc", "<Cmd>Telescope commands<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "zt", "<Cmd>Telescope treesitter<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "zm", "<Cmd>Telescope marks<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "zr", "<Cmd>Telescope registers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "z*", "<Cmd>Telescope grep_string<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"zf",
	"<Cmd>Telescope file_browser file_browser<CR>",
	{ noremap = true, silent = true }
)

