vim.pack.add({
  {src="https://github.com/epwalsh/obsidian.nvim"},
  {src="https://github.com/nvim-lua/plenary.nvim"},
})

require("obsidian").setup({
  workspaces = {
    {
    name="personal",
    path="~/Obsidian/personal",
    },
  },
})
