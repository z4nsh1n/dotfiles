vim.pack.add({
  -- {src = "https://github.com/igorlfs/nvim-dap-view", version = vim.version.range("1.*")  },
  -- {src = "https://github.com/igorlfs/nvim-dap-view"},
  {src = "https://github.com/mfussenegger/nvim-dap"},
  {src = "https://github.com/nvim-neotest/nvim-nio"},
  {src = "https://github.com/rcarriga/nvim-dap-ui"},
})


local dap = require('dap')
require("dapui").setup({})

vim.keymap.set('n', '<leader>s', function() require('dapui').float_element("scopes", {enter=true}) end)
vim.keymap.set('n', '<leader>m', function() require('dapui').float_element("repl", {enter=true}) end)
-- local widgets = require("dap.ui.widgets")
--
-- -- local scopes = widgets.sidebar(widgets.scopes)
-- local scopes_sidebar = nil
-- local expression_sidebar = nil
--
-- vim.keymap.set('n', '<leader>a', function()
--   if scopes_sidebar then
--     scopes_sidebar.toggle()
--   else 
--     scopes_sidebar = widgets.sidebar(widgets.frames)
--     scopes_sidebar.open()
--   end
-- end)
--
-- vim.keymap.set('n', '<leader>m', function()
--   if expression_sidebar then
--     expression_sidebar.toggle()
--   else 
--     expression_sidebar = widgets.sidebar(widgets.scopes)
--     expression_sidebar.open()
--   end
-- end)
--
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
-- -- vim.keymap.set('n', '<leader>ds', function ()dap.launch() end)
vim.keymap.set('n', '<leader>db', function () dap.toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
--
-- vim.keymap.set({'n', 'v'}, '<leader>dh', function() require('dap.ui.widgets').hover() end)
-- vim.keymap.set({'n', 'v'}, '<leader>dp', function() require('dap.ui.widgets').preview() end)
-- vim.keymap.set('n', '<leader>dl', function() local widgets = require('dap.ui.widgets') widgets.centered_float(widgets.frames) end)
-- vim.keymap.set('n', '<leader>dk', function() local widgets = require('dap.ui.widgets') widgets.centered_float(widgets.scopes) end)
--
dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = {"--interpreter=dap", "--eval-command", "set print pretty on"}
}

dap.configurations.odin = {
  {
    name = "Launch",
    type = "gdb",
    request = "launch",
    program = function ()
      return vim.fn.input('path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    args = {},
    cwd = "${workspacefolder}",
  }
}
