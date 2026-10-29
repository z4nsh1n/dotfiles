vim.pack.add {
  { src = "https://github.com/romus204/tree-sitter-manager.nvim" }
}

require("tree-sitter-manager").setup({
  ensure_installed = {"lua","zig", "c", "cpp", "ocaml", "haskell", "rust", "markdown", "markdown_inline"},
  highlight = true,
  nerdfont = true,
  border = "rounded"
})
