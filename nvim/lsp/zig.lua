-- local capabilities = vim.lsp.protocol.make_client_capabilities()

-- if capabilities.workspace then
--   capabilities.workspace.didChangeWatchedFiles = {
--     dynamicRegistration = true,
--   }
-- end
--
return {
  cmd = {"zls"},
  filetypes = {"zig", "zir"},
  root_markers = {"build.zig", "zls.json"},
  workspace_required = false,
}
