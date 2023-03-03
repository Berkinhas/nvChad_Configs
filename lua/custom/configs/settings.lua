local opt = vim.opt
local api = vim.api
-- Teagar Configs 
opt.colorcolumn = '80'
opt.scrolloff = 8
-- Fix cursor when switching from insert mode to normal
api.nvim_set_keymap('i', '<Esc>', '<Esc>`^', { noremap = true })
opt.guicursor = ''
opt.cmdheight = 2
opt.backup = false
opt.writebackup = false
vim.o.virtualedit = 'onemore'

vim.cmd([[
  augroup highlight_current_buffer
    autocmd!
    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
  augroup END
]])
vim.cmd [[

   augroup ilikecursorline
      autocmd VimEnter * :highlight CursorLine guibg=#282a2e
   augroup END

]]
