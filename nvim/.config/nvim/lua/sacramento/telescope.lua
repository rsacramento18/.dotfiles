if not pcall(require, "telescope") then
    return
end

local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local previewers = require("telescope.previewers")
local action_state = require("telescope.actions.state")
local conf = require("telescope.config").values
local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    prompt_prefix = " > ",
    selection_caret = " > ",
    entry_prefix = "  ",
    multi_icon = "<>",

    file_sorter = require("telescope.sorters").get_fzy_sorter,
    color_devicons = true,

    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

    mappings = {
      i = {
        ["<C-x>"] = false,
        ["<C-q>"] = actions.send_to_qflist,
      },
    },
  },
})

local _ = pcall(require, "nvim-nonicons")

local M = {}
M.search_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Int.vim >",
    cwd = "~/.dotfiles",
    hidden = true,
  })
end

M.find_all_projects = function()
  require("telescope.builtin").find_files({
    prompt_title = "Find all projects",
    cwd = "~/work",
    hidden = true,
  })
end

M.grep_all_projects = function()
  require("telescope.builtin").live_grep({
    prompt_title = "Grep all projects",
    cwd = "~/work",
    hidden = true,
  })
end

M.git_branches = function()
  require("telescope.builtin").git_branches({
    attach_mappings = function(_, map)
      map("i", "<c-d>", actions.git_delete_branch)
      map("n", "<c-d>", actions.git_delete_branch)
      map("i", "<c-e>", actions.git_create_branch)
      map("n", "<c-e>", actions.git_create_branch)
      return true
    end,
  })
end

M.documents = function()
  require("telescope").extensions.file_browser.file_browser({
    cwd = "~/work/documents",
  })
end

return M
