require('gitsigns').setup{
  signs = {
    delete = { text = "󰍵" },
    changedelete = { text = "󱕖" },
  },
}
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
