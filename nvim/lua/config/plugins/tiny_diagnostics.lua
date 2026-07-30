vim.pack.add({
  {src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim"}
})

require("tiny-inline-diagnostic").setup{
  preset = "modern",
  transparent_cursorline = true,

  multilines = {
    enabled = false,
    always_show = true,
    trim_whitespace = false,
    tabstop = 4
  },

  options = {
    show_source = {
      enabled = true,
    }
  },
  show_code = true,

  softwrap = 20,

  show_related = {
    enabled = true,
    max_count = 3,
  },

  overflow = {
    mode = "wrap",
    after = 30,
  },


}
