vim.pack.add ({
  {src= "https://github.com/nvim-neotest/nvim-nio"},
  {src = "https://github.com/rcarriga/nvim-dap-ui"},
  {src="https://github.com/mfussenegger/nvim-dap"},
})

require("dapui").setup({})
local dap = require("dap")

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    command = 'codelldb',
    args = {"--port", "${port}"},
  }
}

dap.configurations.c = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function ()
      return vim.fn.input("Path to executable file:", vim.fn.getcwd(), 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

dap.configurations.rust = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function ()
      return vim.fn.input("Path to executable file:", vim.fn.getcwd() .. '/target/debug/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}
