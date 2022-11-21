local bufferline_status, bufferline = pcall(require, "bufferline")

if not bufferline_status then
  return
end

bufferline.setup {
  animation = false,
}

vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = '*',
  callback = function()
    if vim.bo.filetype == 'NvimTree' then
      require 'bufferline.api'.set_offset(31, 'FileTree')
    end
  end
})

vim.api.nvim_create_autocmd('BufWinLeave', {
  pattern = '*',
  callback = function()
    if vim.fn.expand('<afile>'):match('NvimTree') then
      require 'bufferline.api'.set_offset(0)
    end
  end
})
