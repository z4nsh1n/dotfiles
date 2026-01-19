vim.lsp.enable({
  "ocaml",
  "go",
  "gleam",
  "roc",
  "zig",
  "c3c",
	"clangd",
	"lua-ls",
	"rust-analyzer",})

-- vim.o.autocomplete=true
vim.o.winborder = "rounded"
vim.diagnostic.config({virtual_text = true, virtual_lines=false})
vim.o.number = true
vim.o.relativenumber = true
-- vim.opt.completeopt = {"fuzzy", "menuone", "noselect", "noinsert"}
-- vim.opt.completeopt = {"menu", "menuone", "noselect"}
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.clipboard = "unnamedplus"
vim.o.termguicolors = true
vim.o.smartcase = true
vim.o.cursorcolumn = true
vim.o.cursorline = true
vim.g.mapleader = " "


vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = false })
    end
    vim.lsp.inlay_hint.enable(true)
  end,
})

-- load plugins in the plugins dir
-- Does not work ?!!
-- local plugins_path =  "lua/config/plugins"
-- for plugin in io.popen("ls " .. plugins_path):lines() do
-- 	-- vim.notify(plugin:gsub(".lua",""))
-- 	require("config.plugins." .. plugin:gsub(".lua", ""))
-- end

-- bit weird, 
require("config.plugins.mini")
require("config.plugins.colors")
require("config.plugins.blink")
require("config.plugins.modes")
require("config.plugins.barbar")
require("config.plugins.flash")
require("config.plugins.c3")
require("config.plugins.treesitter")
require("config.plugins.autopairs")
require("config.plugins.fyler")
require("config.plugins.telescope")
require("config.plugins.neogit")
require("config.plugins.obsidian")
require("config.plugins.tiny_diagnostics")

-- vim.cmd.colorscheme("dracula-soft")
vim.cmd.colorscheme("minicyan")


-- cmd mappings
vim.keymap.set("c", "<C-k>", "<Up>", {remap=false,})
vim.keymap.set("c", "<C-j>", "<Down>", {remap=false,})


-- normal mappings
vim.keymap.set("n", "<A-[>", "g;zz", {remap=false, desc="jump back in the change list"})
vim.keymap.set("n", "<A-]>", "g,zz", {remap=false, desc="jump back in the change list"})
vim.keymap.set("n", "n", "nzz", {remap=false})
vim.keymap.set("n", "N", "Nzz", {remap=false})
vim.keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<cr>", {desc = "change current directory to current file "})
vim.keymap.set("n", "<leader>lcd", "<cmd>lcd %:p:h<cr>", {desc = "change current directory to current file "})
vim.keymap.set("n", "-", "<cmd>Fyler<cr>", {desc = "Toggle Fyler filemanager"})
vim.keymap.set("n", "K", function()
  vim.lsp.buf.hover({ border = "rounded", max_height = 25, max_width = 80 })
end, {desc = "Hover over current <word>"})
vim.keymap.set("n", "<leader>z", ":tabnew %<cr>")
vim.keymap.set("n", "<leader>h", ":noh<cr>")
-- vim.keymap.set("n", "<space>bx", "<cmd>bdelete<cr>")
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<cr>")
vim.keymap.set("n", "<leader>x", ":.lua<cr>")
vim.keymap.set("n", "<C-s>", ":w!<cr>")
vim.keymap.set("n", "gs", function() require("telescope.builtin").lsp_document_symbols() end)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
vim.keymap.set('n', 'gra', vim.lsp.buf.code_action)
vim.keymap.set('n', 'grr', vim.lsp.buf.references)
vim.keymap.set('n', "<M-j>", "<cmd>cnext<cr>")
vim.keymap.set('n', "<M-k>", "<cmd>cprev<cr>")
vim.keymap.set('n', "<leader>ds", vim.diagnostic.setqflist)
vim.keymap.set('n', "<leader>df", vim.diagnostic.open_float)
vim.keymap.set('n', "<leader>b", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<c-h>", [[<Esc><C-w>h]])
vim.keymap.set("n", "<c-l>", [[<Esc><C-w>l]])
vim.keymap.set("n", "<c-j>", [[<Esc><C-w>j]])
vim.keymap.set("n", "<c-k>", [[<Esc><C-w>k]])

-- insert mappings
vim.keymap.set('i', '<C-s>', "<esc>:w<cr>")
vim.keymap.set("i", "jj", "<esc>", {desc = "Escape"})
-- vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help)
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "<M-h>", "<S-Left>")
vim.keymap.set("i", "<M-l>", "<S-Right>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

vim.keymap.set("v", "<space>x", ":lua<cr>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<A-h>", [[<C-\><C-n><C-w>h]])
vim.keymap.set("t", "<A-l>", [[<C-\><C-n><C-w>l]])
vim.keymap.set("t", "<A-j>", [[<C-\><C-n><C-w>j]])
vim.keymap.set("t", "<A-k>", [[<C-\><C-n><C-w>k]])

local git_hunks = function()
  require("telescope.pickers")
    .new({
      finder = require("telescope.finders").new_oneshot_job({ "git", "jump", "--stdout", "diff" }, {
        entry_maker = function(line)
          local filename, lnum_string = line:match("([^:]+):(%d+).*")

          -- I couldn't find a way to use grep in new_oneshot_job so we have to filter here.
          -- return nil if filename is /dev/null because this means the file was deleted.
          if filename:match("^/dev/null") then
            return nil
          end

          return {
            value = filename,
            display = line,
            ordinal = line,
            filename = filename,
            lnum = tonumber(lnum_string),
          }
        end,
      }),
      sorter = require("telescope.sorters").get_generic_fuzzy_sorter(),
      previewer = require("telescope.config").values.grep_previewer({}),
      results_title = "Git hunks",
      prompt_title = "Git hunks",
      layout_strategy = "flex",
    }, {})
    :find()
end

vim.keymap.set("n", "<Leader>gh", "<cmd>Telescope git_signs<cr>", {})
vim.keymap.set("n", "<Leader>gH", git_hunks, {})
