local M = { 
  "nvim-neotest/neotest",
  event="VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-neotest/neotest-python",
    "antoinemadec/FixCursorHold.nvim",
    "mfussenegger/nvim-dap-python",
  }
}

function M.config()

  require("neotest").setup({
    output = {
    enabled = true,
    open_on_run = "yes",
  },
    adapters = {
      require("neotest-python") ({
        dap = {
          justMyCode = false,
          console = "integratedTerminal",
        },
        args = { "--log-level", "DEBUG", "--quiet" },
        runner = "pytest",
      }),
    },
  })
end

return M
