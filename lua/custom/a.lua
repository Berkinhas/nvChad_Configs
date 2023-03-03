---- configs ------------------------------------------------------------------

-- settings.lua ---------------------------------------------------------------
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

-- mappings -------------------------------------------------------------------
vim.cmd([[

" Adding an empty line below, above and below with insert
nmap op o<Esc>k
nmap oi O<Esc>j
nmap oo A<CR>

]])


---- plugins ------------------------------------------------------------------

-- plugins --------------------------------------------------------------------


-- utils ----------------------------------------------------------------------
-- VirtColumn -----------------------------------------------------------------
-- require("virt-column").setup()
vim.cmd([[highlight VirtColumn guifg=#FF7A91]])

