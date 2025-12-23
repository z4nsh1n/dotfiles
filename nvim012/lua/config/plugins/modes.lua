vim.pack.add({
	{src = 'https://github.com/mvllow/modes.nvim',}})
require('modes').setup {
        colors = {
          copy = '#f38ba8',
          delete = '#fab387',
          insert = '#a6e3a1',
          visual = '#89b4fa',
          replace = '#f9e2af',
          command = '#94e2d5',
        },
        line_opacity = 0.3,
        -- set_cursor = true,
        set_cursorline = true,
        -- set_number = true,
        -- set_relativenumber = true,
      }
