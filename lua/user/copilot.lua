-- have to comment out the Tab and S-Tab bindings in cmp.lua for copilot to work
local M = {
  "github/copilot.vim",
  event = "VimEnter",
  commit = "309b3c803d1862d5e84c7c9c5749ae04010123b8",
}

function M.config()
  vim.g.copilot_node_command = "/home/danm/.nvm/versions/node/v17.9.1/bin/node"
end

return M
