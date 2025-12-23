vim.pack.add({
  {src = "https://github.com/folke/flash.nvim"},
})

vim.keymap.set("n", "<C-f>", require("flash").jump)

require("flash").setup({

    keys = {
      -- {
      --   "<C-f>",
      --   function()
      --     require("flash").jump()
      --   end,
      --   desc = "Multi Window Flash [F]ind"
      -- },
      -- { "f", mode = { "n", "x", "o" } },
      -- { "F", mode = { "n", "x", "o" } },
      -- { "t", mode = { "n", "x", "o" } },
      -- { "T", mode = { "n", "x", "o" } },
    },

    opts = {
      mode = {
        char = {
          jump_labels = true,
          jump = { autojump = true },
        }
      }
    }
  })
