vim.pack.add({
  {src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim"}
})

require("tiny-inline-diagnostic").setup{
  preset = "modern",
  multilines = {
    enabled = true,
    always_show = true
  },

  options = {
    show_source = {
      enabled = true,
    }
  }
}
