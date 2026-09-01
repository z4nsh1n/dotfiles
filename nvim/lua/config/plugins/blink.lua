vim.pack.add({
	-- {src="https://github.com/Saghen/blink.nvim"}})
	{src="https://github.com/rafamadriz/friendly-snippets"},
	{src="https://github.com/Saghen/blink.cmp"},
})

require("blink.cmp").setup({
  -- fuzzy = { implementation = "prefer_rust_with_warning" },
  fuzzy = { implementation = "lua"
  -- fuzzy = { implementation = "prefer_rust",
  -- frecency = {
  --     -- Whether to enable the frecency feature
  --     enabled = true,
  --     -- Location of the frecency database
  --     path = vim.fn.stdpath('state') .. '/blink/cmp/frecency.dat',
  --     -- UNSAFE!! When enabled, disables the lock and fsync when writing to the frecency database. 
  --     -- This should only be used on unsupported platforms (i.e. alpine termux)
  --     unsafe_no_lock = false,
  --   },
},
	keymap = {
    preset = "enter",
    ['<C-j>'] = {function (cmp) cmp.show()end , 'select_next'},
    ['<C-k>'] = {'select_prev', 'fallback'},
    ['<C-u>'] = {'scroll_documentation_up', 'fallback'},
    ['<C-d>'] = {'scroll_documentation_down', 'fallback'},
    ['<C-space>'] = {'show_signature', 'hide_signature', 'fallback'},
    ['<C-p>'] = {function (cmp) cmp.show() end},
    -- ['<A-y>'] = require('minuet').make_blink_map(),
  },
  signature = { enabled = true, },

	completion = {
    ghost_text = {enabled = true},
      -- accept = {auto_brackets = {enabled = true},},
    accept = {auto_brackets = {enabled = false},},
    documentation = {
        auto_show = true,
    },
    list = {selection = {
        preselect = true, auto_insert = false}
        -- preselect = false, auto_insert = false}
        -- preselect = true, auto_insert = true}
    },
	},
	sources = {
		default = {"lsp", "path", "snippets", "buffer"},
    providers = {
    }
	},
  snippets = { preset = 'default',
    expand = function (snippet)
      vim.snippet.expand(snippet)
  end},
  cmdline = {
    keymap = {preset = "enter",
    ['<C-j>'] = {'select_next', 'fallback'},
    ['<C-k>'] = {'select_prev', 'fallback'},
  },
      completion = { 
      list = {selection = {
        preselect = false, auto_insert = false}
      },
        menu = {auto_show = true}}
  },
})

