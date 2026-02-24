vim.pack.add ({
  {src="https://github.com/imranZERO/multiterm.nvim",},
})

require("multiterm").setup({
  vim.keymap.set("n", "<leader>p", "<Plug>(Multiterm)"),
  vim.keymap.set("n", "<leader>l", "<Plug>(MultitermList)"),
  vim.keymap.set("n", "<leader>c", function ()
    local cmd = vim.fn.input("COMMAND:")
    vim.cmd("Multiterm! " .. cmd)
  end)
})
