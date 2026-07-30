
return {
  -- cmd = {"c3lsp", "-stdlib-path", "/usr/lib/c3c/lib/"},
  -- cmd = {"c3lsp", "-stdlib-path", "/usr/lib/c3c/lib/"},
  -- cmd = {"c3lsp", "-stdlib-path", "/home/zanshin/software/c3c/lib" },
  -- cmd = {"c3lsp", "-stdlib-path", "/home/zanshin/software/c3c/lib", "-c3c-path", "/home/zanshin/software/c3c/build/", "-debug"},
  -- cmd = {"/home/zanshin/software/lsp/build/lsp", "--stdlib-path", "/usr/lib/c3c/lib/", "--compiler-path", "/usr/lib/c3c/"},
  -- cmd = {"/home/zanshin/software/lsp/build/lsp"},
  cmd = {"/home/zanshin/software/lsp/build/lsp"},
      --stdlib-path             Path to C3 standard library
      --compiler-path           Path to c3c compiler
  -- filetypes = {"c3", "c3i"},
  filetypes = {"c3"},
  root_markers = {".git", "project.json", "manifest.json"},
}
