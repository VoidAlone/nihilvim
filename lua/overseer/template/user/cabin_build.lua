local overseer = require("overseer")

overseer.register_template({
  name = "Cabin Build",
  builder = function()
    return {
      cmd = { "make" },
      cwd = "build", -- <-- This is the key part!
      name = "Cabin Make Build",
    }
  end,
  condition = {
    filetype = { "cpp", "c" },
  },
})

