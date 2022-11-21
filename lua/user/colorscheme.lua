vim.cmd [[
try
  colorscheme onedark 
  highlight NonText guifg=#282C34
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
