vim.pack.add ({
  {src="https://github.com/imranZERO/multiterm.nvim",},
  -- {src="https://www.github.com/wstucco/c3.nvim"},
})


require("multiterm").setup({
    -- Recommended keymaps:
    vim.keymap.set("n", "<leader>t", "<Plug>(Multiterm)"),
    vim.keymap.set("n", "<leader>l", "<Plug>(MultitermList)"),

    -- Add configuration options here if needed
})

