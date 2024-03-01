local opt = vim.opt
local wo = vim.wo

opt.cursorline = true
-- Полноцветный режим
opt.termguicolors = true
-- Поиск
-- Игнорировать регистр букв
opt.ignorecase = true
-- Не игнорировать регистр если есть большие буквы
opt.smartcase = true
-- Подсвечивать при поиске
opt.showmatch = true
opt.hlsearch = false
opt.incsearch = true

-- Количество пробелов при табуляции
opt.shiftwidth = 4
-- Количество пробелов котоыре считаются табуляцией
opt.tabstop = 4
-- Будем умными и пусть редактор сам ставит их когда надо
opt.smarttab = true
opt.smartindent = true
opt.expandtab = true

--
opt.wrap = true

-- Номера строк
wo.number = true
-- Относительные номера строк
wo.relativenumber = true
-- Отступ для скролла
opt.scrolloff = 10
opt.signcolumn = "yes"

opt.colorcolumn = "120"

vim.api.nvim_set_option('updatetime', 150)
vim.api.nvim_set_option("clipboard","unnamed")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
