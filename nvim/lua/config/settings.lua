vim.o.termguicolors = true

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.wrap = false
vim.o.scrolloff = 10
vim.o.sidescrolloff = 10

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true

vim.o.signcolumn = "yes"
vim.o.colorcolumn = "80"
vim.o.showmatch = true
vim.o.cmdheight = 1
vim.o.completeopt = "menuone,noinsert,noselect"
-- vim.o.showmode = false
vim.o.pumheight = 10
-- vim.o.pumblend = 30
vim.o.winblend = 0
vim.o.conceallevel = 0
vim.o.concealcursor = ""
vim.o.synmaxcol = 300
-- vim.o.fillchars = {eob = " "}
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.undodir = undodir
vim.o.updatetime = 300
vim.o.timeoutlen = 500
vim.o.ttimeoutlen = 0
vim.o.autoread = true
vim.o.autowrite = false

vim.o.hidden = true
vim.o.errorbells = false
vim.o.backspace = "indent,eol,start"
vim.o.autochdir = false
vim.opt.iskeyword:append("-")
vim.opt.path:append("**")
vim.o.selection = "inclusive"
vim.o.mouse = "a"
vim.opt.clipboard:append("unnamedplus")
vim.o.modifiable = true
vim.o.encoding = "UTF-8"
vim.o.guicursor = 
"n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldlevel = 99
vim.o.splitbelow = true
vim.o.splitright = true

vim.o.wildmenu = true
vim.o.wildmode = "longest:full,full"
vim.opt.diffopt:append("linematch:60")
vim.o.redrawtime = 10000
vim.o.maxmempattern = 20000

vim.o.winborder = "rounded"
