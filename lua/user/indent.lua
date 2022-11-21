-- vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"

-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#313640 gui=nocombine]]


require("indent_blankline").setup {
  filetype_exclude = { 'help', 'packer', 'startify', 'NvimTree', 'alpha', 'html' },
  show_end_of_line = true,
  show_current_context = true,
  show_current_context_start = false,
  space_char_blankline = " ",
  char_highlight_list = {
    "IndentBlanklineIndent1",
    -- "IndentBlanklineIndent2",
    -- "IndentBlanklineIndent3",
    -- "IndentBlanklineIndent4",
    -- "IndentBlanklineIndent5",
    -- "IndentBlanklineIndent6",
  },
}
