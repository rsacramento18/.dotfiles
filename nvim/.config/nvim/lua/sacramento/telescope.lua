local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local previewers = require("telescope.previewers")
local action_state = require("telescope.actions.state")
local conf = require("telescope.config").values
local actions = require("telescope.actions")


require("telescope").setup({
  defaults = {
    file_sorter = require("telescope.sorters").get_fzy_sorter,
    prompt_prefix = " > ",
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
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    },
    project = {
      base_dirs = {
        '/Users/work/work',
      },
      hidden_files = true -- default: false
    }
  },
})
require('telescope').load_extension("project")
require("telescope").load_extension("fzy_native")


local M = {}
M.search_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Int.vim >",
    cwd = "/Users/work/.config/nvim",
    hidden = true,
  })
end

M.find_all_projects = function()
  require("telescope.builtin").find_files({
    prompt_title = "Find all projects",
    cwd = "/Users/work/work",
    hidden = true,
  })
end

M.grep_all_projects = function()
  require("telescope.builtin").live_grep({
    prompt_title = "Grep all projects",
    cwd = "/Users/work/work",
    hidden = true,
  })
end

M.git_branches = function()
  require("telescope.builtin").git_branches({
    attach_mappings = function(_, map)
      map("i", "<c-d>", actions.git_delete_branch)
      map("n", "<c-d>", actions.git_delete_branch)
      return true
    end,
  })
end

return M
