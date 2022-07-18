-- if not pcall(require, "colorbuddy") then
--   return
-- end

-- require("colorbuddy").colorscheme "gruvbuddy"
-- require("colorizer").setup()

-- local c = require("colorbuddy.color").colors
-- local Group = require("colorbuddy.group").Group
-- local g = require("colorbuddy.group").groups
-- local s = require("colorbuddy.style").styles

-- Group.new("GoTestSuccess", c.green, nil, s.bold)
-- Group.new("GoTestFail", c.red, nil, s.bold)

-- Group.new("TSPunctBracket", c.orange:light():light())

-- Group.new("StatuslineError1", c.red:light():light(), g.Statusline)
-- Group.new("StatuslineError2", c.red:light(), g.Statusline)
-- Group.new("StatuslineError3", c.red, g.Statusline)
-- Group.new("StatuslineError3", c.red:dark(), g.Statusline)
-- Group.new("StatuslineError3", c.red:dark():dark(), g.Statusline)

-- Group.new("pythonTSType", c.red)
-- Group.new("goTSType", g.Type.fg:dark(), nil, g.Type)

-- Group.new("typescriptTSConstructor", g.pythonTSType)
-- Group.new("typescriptTSProperty", c.blue)

-- Group.new("WinSeparator", nil, nil)

-- Group.new("TSTitle", c.blue)

require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  overrides = {},
})

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
