vim.g.mapleader = " "
vim.g.maplocalleader = " "



-- Normal mode
vim.keymap.set("n", "<leader>gO", "<cmd>Telescope lsp_document_symbols<cr>", {desc="set colorscheme to newpaper"})
vim.keymap.set("n", "<leader>1", "<cmd>colorscheme minicyan<bar>set bg=dark<cr>", {desc="set colorscheme to minicyan"})
vim.keymap.set("n", "<leader>2", "<cmd>colorscheme newpaper<bar>set bg=light<cr>", {desc="set colorscheme to newpaper"})
vim.keymap.set("n", "<leader>3", "<cmd>colorscheme gruvbox<bar>set bg=dark<cr>", {desc="set colorscheme to newpaper"})
vim.keymap.set("n", "<leader>4", "<cmd>colorscheme gruvbox<bar>set bg=light<cr>", {desc="set colorscheme to newpaper"})
vim.keymap.set("n", "zz", "za", {desc="Fold"})
vim.keymap.set("n", "z", "zA", {desc="Fold"})
vim.keymap.set("n", "<leader>n", "<cmd>Neogit<cr>", {desc="Neogit"})
vim.keymap.set("n", "<leader><leader>l", "<cmd>Telescope live_grep<cr>", {desc="Telescope live grep"})
vim.keymap.set("n", "-", "<cmd>Fyler<cr>", {desc = "Toggle Fyler filemanager"})
vim.keymap.set("n", "<c-h>", [[<Esc><C-w>h]])
vim.keymap.set("n", "<c-l>", [[<Esc><C-w>l]])
vim.keymap.set("n", "<c-j>", [[<Esc><C-w>j]])
vim.keymap.set("n", "<c-k>", [[<Esc><C-w>k]])
vim.keymap.set("n", "<leader>wc", "<C-w>c", {desc="Close window"})
vim.keymap.set("n", "<leader>wx", "<C-w>c", {desc="Close window"})
vim.keymap.set("n", "<leader>wx", "<C-w>c", {desc="Close window"})
vim.keymap.set("n", "<leader>wq", ":q<cr>", {desc="Split window horizontal"})
vim.keymap.set("n", "<leader>w", "<C-w>v>", {desc="Split window vertical"})
vim.keymap.set("n", "<leader>W", "<C-w>s", {desc="Split window horizontal"})

vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<cr>")
vim.keymap.set("n", "<leader>x", ":.lua<cr>")
vim.keymap.set("n", "<c-k>", [[<Esc><C-w>k]])
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>", {desc="Clear highlights in search"})
vim.keymap.set("n", "n", "nzzzv", {desc='Next search result, centered'})
vim.keymap.set("n", "N", "Nzzzv", {desc='Next search result, centered'})
vim.keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<cr>", {desc = "change current directory to current file "})
vim.keymap.set("n", "<C-s>", ":w!<cr>")
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "Half page down centered", remap=false})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "Half page up centered", remap=false})

vim.keymap.set("n", "<leader>.", "g,zz", {remap=false, desc = "Go up into the change map"})
vim.keymap.set("n", "<leader>,", "g;zz", {remap=false, desc = "Go up into the change map"})
-- vim.keymap.set("n", "<C-o>", "<C-o>zz", {remap=false, desc = "Go up into the change map"})
-- vim.keymap.set("n", "<C-i>,","<C-i>zz", {remap=false, desc = "Go up into the change map"})
-- vim.keymap.set("n", "<leader>s", "vsplit<CR>|g;zz")
vim.keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<cr>", {desc = "change current directory to current file "})
vim.keymap.set("n", "<leader>lcd", "<cmd>lcd %:p:h<cr>", {desc = "change current directory to current file "})
-- Add keymovements to the jumplist
vim.keymap.set(
  'n', 'j', function()
    return vim.v.count > 3 and "m'" .. vim.v.count .. 'j'
      or (vim.v.count > 0 and vim.v.count .. 'j' or 'gj')
  end,
  { expr = true, desc = 'Adds jumps greater than 3 lines to the jumplist' }
)

vim.keymap.set(
  'n', 'k', function()
    return vim.v.count > 3 and "m'" .. vim.v.count .. 'k'
      or (vim.v.count > 0 and vim.v.count .. 'k' or 'gk')
  end,
  { expr = true, desc = 'Adds jumps greater than 3 lines to the jumplist' }
)

-- Command Mode
vim.keymap.set("c", "<C-k>", "<Up>", {remap=false,})
vim.keymap.set("c", "<C-j>", "<Down>", {remap=false,})

-- Insert Mode
vim.keymap.set('i', '<C-s>', "<esc>:w<cr>")
vim.keymap.set("i", "jj", "<esc>", {desc = "Escape"})
-- vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help)
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "<M-h>", "<S-Left>")
vim.keymap.set("i", "<M-l>", "<S-Right>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- Terminal Mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<A-h>", [[<C-\><C-n><C-w>h]])
vim.keymap.set("t", "<A-l>", [[<C-\><C-n><C-w>l]])
vim.keymap.set("t", "<A-j>", [[<C-\><C-n><C-w>j]])
vim.keymap.set("t", "<A-k>", [[<C-\><C-n><C-w>k]])

-- -- cmd mappings
-- vim.keymap.set("c", "<C-k>", "<Up>", {remap=false,})
-- vim.keymap.set("c", "<C-j>", "<Down>", {remap=false,})
--
--
-- -- normal mappings
-- vim.keymap.set("n", "<A-[>", "g;zz", {remap=false, desc="jump back in the change list"})
-- vim.keymap.set("n", "<A-]>", "g,zz", {remap=false, desc="jump back in the change list"})
-- vim.keymap.set("n", "n", "nzz", {remap=false})
-- vim.keymap.set("n", "N", "Nzz", {remap=false})
--
-- vim.keymap.set("n", "<A-q>", ":q<cr>", {remap=false, desc="close window"})
-- vim.keymap.set("n", "<leader>.", "g,zz", {remap=false, desc = "Go up into the change map"})
-- vim.keymap.set("n", "<leader>,", "g;zz", {remap=false, desc = "Go up into the change map"})
-- vim.keymap.set("n", "<leader>v", function () vim.cmd.split() vim.cmd.normal("j")end)
-- vim.keymap.set("n", "<leader>s", function () vim.cmd.vsplit() vim.cmd.normal("l")end)
-- -- vim.keymap.set("n", "<leader>s", "vsplit<CR>|g;zz")
-- vim.keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<cr>", {desc = "change current directory to current file "})
-- vim.keymap.set("n", "<leader>lcd", "<cmd>lcd %:p:h<cr>", {desc = "change current directory to current file "})
-- vim.keymap.set("n", "-", "<cmd>Fyler<cr>", {desc = "Toggle Fyler filemanager"})
-- vim.keymap.set("n", "K", function()
--   vim.lsp.buf.hover({ border = "rounded", max_height = 25, max_width = 80 })
-- end, {desc = "Hover over current <word>"})
-- vim.keymap.set("n", "<leader>z", ":tabnew %<cr>")
-- vim.keymap.set("n", "<leader>h", ":noh<cr>")
-- -- vim.keymap.set("n", "<space>bx", "<cmd>bdelete<cr>")
-- vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<cr>")
-- vim.keymap.set("n", "<leader>x", ":.lua<cr>")
-- vim.keymap.set("n", "<C-s>", ":w!<cr>")
-- vim.keymap.set("n", "gs", function() require("telescope.builtin").lsp_dynamic_workspace_symbols() end)
-- vim.keymap.set("n", "gd", vim.lsp.buf.definition)
-- vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
-- vim.keymap.set('n', 'gra', vim.lsp.buf.code_action)
-- vim.keymap.set('n', 'grr', vim.lsp.buf.references)
-- vim.keymap.set('n', "<M-j>", "<cmd>cnext<cr>")
-- vim.keymap.set('n', "<M-k>", "<cmd>cprev<cr>")
--
-- vim.keymap.set('n', "<leader>ds", vim.diagnostic.setqflist)
-- vim.keymap.set('n', "<leader>df", vim.diagnostic.open_float)
-- vim.keymap.set('n', "<leader>b", "<cmd>Telescope buffers<cr>")
-- -- vim.keymap.set('n', "<space>dq", vim.diagnostic.setqflist)
-- vim.keymap.set('n', "<leader>bb", "<cmd>Telescope buffers<cr>")
-- vim.keymap.set("n", "<c-h>", [[<Esc><C-w>h]])
-- vim.keymap.set("n", "<c-l>", [[<Esc><C-w>l]])
-- vim.keymap.set("n", "<c-j>", [[<Esc><C-w>j]])
-- vim.keymap.set("n", "<c-k>", [[<Esc><C-w>k]])
--
-- -- Add keymovements to the jumplist
-- vim.keymap.set(
--   'n', 'j', function()
--     return vim.v.count > 3 and "m'" .. vim.v.count .. 'j'
--       or (vim.v.count > 0 and vim.v.count .. 'j' or 'gj')
--   end,
--   { expr = true, desc = 'Adds jumps greater than 3 lines to the jumplist' }
-- )
--
-- vim.keymap.set(
--   'n', 'k', function()
--     return vim.v.count > 3 and "m'" .. vim.v.count .. 'k'
--       or (vim.v.count > 0 and vim.v.count .. 'k' or 'gk')
--   end,
--   { expr = true, desc = 'Adds jumps greater than 3 lines to the jumplist' }
-- )
-- -- insert mappings
-- vim.keymap.set('i', '<C-s>', "<esc>:w<cr>")
-- vim.keymap.set("i", "jj", "<esc>", {desc = "Escape"})
-- -- vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help)
-- vim.keymap.set("i", "<C-c>", "<Esc>")
-- vim.keymap.set("i", "<M-h>", "<S-Left>")
-- vim.keymap.set("i", "<M-l>", "<S-Right>")
-- vim.keymap.set("i", "<C-h>", "<Left>")
-- vim.keymap.set("i", "<C-l>", "<Right>")
