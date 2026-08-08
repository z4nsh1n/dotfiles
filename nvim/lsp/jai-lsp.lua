return {
  cmd = {"/home/zanshin/software/jai/jai-lsp/target/release/jai-lsp"},
  root_markers ={".git", "build.jai", "first.jai" },
  filetypes = { 'jai'},
  settings = {
    jai_lsp = {
      compiler_path = {"/home/zanshin/software/jai"},
      modules_path = {"/home/zanshin/software/jai/modules"},
      diagnostics_on_save = true,
    },
  },
}
