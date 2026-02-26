vim.api.nvim_create_autocmd('CursorHold',
{
  pattern = {"*"},
  callback = function (ev)
    vim.cmd("normal! m'")
  end,
})
