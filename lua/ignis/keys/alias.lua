--[[
Метод для установки горячих клавиш (normal)
key - {string} Строка с горячей клавишей
command - {string} Команда
]]
--
function nm(key, command)
  vim.keymap.set('n', key, command, { noremap = true })
end

--[[
Метод для установки горячих клавиш (input)
key - {string} Строка с горячей клавишей
command - {string} Команда
]]
--
function im(key, command)
  vim.keymap.set('i', key, command, { noremap = true })
end

--[[
Метод для установки горячих клавиш (visual)
key - {string} Строка с горячей клавишей
command - {string} Команда
]]
--
function vm(key, command)
  vim.keymap.set('v', key, command, { noremap = true })
end

--[[
Метод для установки горячих клавиш (terminal)
key - {string} Строка с горячей клавишей
command - {string} Команда
]]
--
function tm(key, command)
  vim.keymap.set('t', key, command, { noremap = true })
end
