vim.pack.add ({
  {src="https://github.com/IstiCusi/kicknvim",},
})

  require("kicknvim").setup({
      kickass_path = "/usr/share/java/kickassembler/KickAss.jar",
      kickman_man = false,
      x64_path = "/usr/bin/x64", -- path to your VICE binary
      keys = {
        assemble = "<leader>ka",
        run = "<leader>kr",
      },
    })

