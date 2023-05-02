---------------------------------------------------- 
--
-- General
--
---------------------------------------------------- 
vim.opt.showmatch = true
vim.opt.matchtime = 1
vim.opt.backspace = 'start,eol,indent'
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.softtabstop=4

-- j, k による移動を折り返されたテキストでも自然に振る舞うように変更
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- vを二回で行末まで選択
vim.keymap.set('v', 'v', '$h')

-- TABにて対応ペアにジャンプ
vim.keymap.set({'n', 'v'}, '<Tab>', '%')

-- 不可視文字の可視化
--vim.opt.list = true
--vim.opt.listchars = {tab='>-', trail='-', eol='↲', extends='>', precedes='<', nbsp='%'}

----------------------------------------------------
--
-- lazy.nvim
--
----------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

plugins = require('plugins')

require("lazy").setup(plugins, opts)

---------------------------------------------------- 
--
-- Binary
--
---------------------------------------------------- 
-- vim -b : edit binary using xxd-format!
-- TODO: 時間があるときにluaで書き直す
--augroup Binary
--    au!
--    au BufReadPre  *.bin let &binary=1
--    au BufReadPost * if &binary | %!xxd
--    au BufReadPost * set ft=xxd | endif
--    au BufWritePre * if &binary | %!xxd -r
--    au BufWritePre * endif
--    au BufWritePost * if &binary | %!xxd
--    au BufWritePost * set nomod | endif
--augroup END
