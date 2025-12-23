vim.pack.add({
      {src = 'https://github.com/nvim-lua/plenary.nvim' },
      {src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      {src = 'https://github.com/radyz/telescope-gitsigns'},
	{src = 'https://github.com/nvim-telescope/telescope.nvim'},
})

      --      { 'LinArcX/telescope-changes.nvim' },
      --
      -- require('telescope').load_extension('fzf')
      require('telescope').setup {
        defaults   = {
          mappings = {
            i = {
              ["<C-j>"] = require('telescope.actions').move_selection_next,
              ["<C-k>"] = require('telescope.actions').move_selection_previous,
            },
          },
        },
        pickers    = {
          find_files = {
            theme = "ivy",
          }
        },
        extensions = {
          fzf = {},
        },
      }
      require("telescope").load_extension('git_signs')
      require("telescope").load_extension('fzf')
      -- require('telescope').load_extension("changes")
      -- require 'telescope'.load_extension('before')

      vim.keymap.set("n", "<leader>fh", require('telescope.builtin').help_tags)
      vim.keymap.set("n", "<leader>ff", require('telescope.builtin').find_files)
      vim.keymap.set("n", "<leader>fg", require('telescope.builtin').grep_string)
      vim.keymap.set("n", "<leader>gf", require('telescope.builtin').git_files)
      vim.keymap.set("n", "<leader>en",
        function()
          require('telescope.builtin').find_files({ cwd = vim.fn.stdpath("config") })
        end)
