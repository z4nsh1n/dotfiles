vim.pack.add({
  {src = "https://github.com/nvim-treesitter/nvim-treesitter", version="main"}})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.c3 = {
    install_info = {
        url = "https://github.com/c3lang/tree-sitter-c3",
        files = { "src/parser.c", "src/scanner.c" },
        branch = "main",
    },
          sync_install = false, -- Set to true if you want to install synchronously
          auto_install = true,  -- Automatically install when opening a file
          filetype = "c3",      -- if filetype does not match the parser name
}

require("nvim-treesitter.configs").setup {
    ensure_installed = {"odin", "c3", "lua", "zig", "rust", "c" , "markdown",  "cpp"},
  highlight = {enable = true},
}
rew

