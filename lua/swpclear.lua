-- main module file
local module = require("swpclear.module")
print("require")
local M = {}
M.config = {
  -- default config
  opt = "Hello!",
  path = "~/.local/state/nvim/swap/",
}

-- setup is the public method to setup your plugin
M.setup = function(args)
  -- you can define your setup function here. Usually configurations can be merged, accepting outside params and
  -- you can also put some validation here for those.
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

-- "hello" is a public method for the plugin
M.swpclr = function()
  module.my_first_function(M.config)
end

return M
