vim.pack.add ({
  {src="https://github.com/mfussenegger/nvim-dap",},
  {src="https://github.com/nvim-neotest/nvim-nio"},
  {src="https://github.com/rcarriga/nvim-dap-ui"},
})

require("dapui").setup({})
local ok, dap = pcall(require, "dap")
if not ok then
  return
end
local utils = require("dap.utils")
local path = vim.fn.getcwd()
local exec_ops = {
  path = path,
  executables = true,
}

dap.adapters.codelldb = {
  type ='server',
  port = '${port}',
  executable = {
    command = 'codelldb',
    args = {'--port', '${port}'},
  }
}

dap.adapters.gdb = {
  id = 'gdb',
  type = 'executable',
  command = 'gdb',
  args = {'--interpreter=dap', '--eval-command', "set print pretty on"},
}

dap.configurations.c = {
  {
    name = 'Run CodeLLDB',
    type = 'codelldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    args = {}, -- provide arguments if needed
    cwd = "${workspaceFolder}",
  },
  {
    name = 'Run executable (GDB)',
    type = 'gdb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    args = {}, -- provide arguments if needed
    cwd = "${workspaceFolder}",
    stopAtBeginningOfMainSubprogram = false,
    -- program = function ()
    --   local path='${workspaceFolder}/${workspaceFolderBasename}'
    --   local ok2, p = pcall(io.open, path)
    --   if ok2 then
    --     return (path and path ~= '') and path or dap.ABORT
    --   end
    --   path = vim.fn.input({
    --     prompt='Path to executable:',
    --     default = '${workspaceFolder}',
    --     completion = 'file',
    --   })
    --   return (path and path ~= '') and path or dap.ABORT
    -- end
  }
}
