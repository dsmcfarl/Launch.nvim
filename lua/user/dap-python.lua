local M = {
  "mfussenegger/nvim-dap-python",
  commit = "37b4cba02e337a95cb62ad1609b3d1dccb2e5d42",
  event = "VeryLazy",
  dependencies = {
    {
      "mfussenegger/nvim-dap",
      event = "VeryLazy",
    },
    {
      "nvim-treesitter/nvim-treesitter",
      event = "VeryLazy",
    },
  },
}

function M.config()
  local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
  pcall(function()
   require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
  end)
end

return M
