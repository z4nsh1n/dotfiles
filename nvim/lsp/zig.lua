-- local capabilities = vim.lsp.protocol.make_client_capabilities()

-- if capabilities.workspace then
--   capabilities.workspace.didChangeWatchedFiles = {
--     dynamicRegistration = true,
--   }
-- end
--
return {
  cmd = {"zls"},
  -- cmd = {"/home/zanshin/software/zigscient/zig-out/bin/zigscient"},
  filetypes = {"zig", "zir"},
  root_markers = {"build.zig", "zls.json"},
  workspace_required = false,
}
