require("ignis.keys.alias")

-- Telescope
local builtin = require('telescope.builtin')

nm('<leader>ff',builtin.find_files)
nm("<leader>fg",builtin.live_grep)
nm("<leader>fb",builtin.buffers)
nm('<leader>fe',':Telescope emoji<CR>')
nm('<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')

-- LSP
nm("<leader>gi",builtin.lsp_implementations)
nm("<leader>gd",builtin.lsp_definitions)
nm("<leader>gr",builtin.lsp_references)
nm("<leader>ld",builtin.diagnostics)
nm("<leader>gb",builtin.git_branches)

-- LazyGit
nm("<leader>gg",":LazyGit<CR>")

-- Tabs

nm('<M-,>', '<Cmd>BufferPrevious<CR>')
nm('<M-.>', '<Cmd>BufferNext<CR>')

nm('<M-б>', '<Cmd>BufferPrevious<CR>')
nm('<M-ю>', '<Cmd>BufferNext<CR>')

nm('<M-1>','<Cmd>BufferGoto 1<CR>')
nm('<M-2>','<Cmd>BufferGoto 2<CR>')
nm('<M-3>','<Cmd>BufferGoto 3<CR>')
nm('<M-4>','<Cmd>BufferGoto 4<CR>')
nm('<M-5>','<Cmd>BufferGoto 5<CR>')
nm('<M-6>','<Cmd>BufferGoto 6<CR>')
nm('<M-7>','<Cmd>BufferGoto 7<CR>')
nm('<M-8>','<Cmd>BufferGoto 8<CR>')
nm('<M-9>','<Cmd>BufferGoto 9<CR>')

nm('<M-w>',':bd<CR>')
nm('<M-ц>',':bd<CR>')
nm('<leader>tf',':GoTestFunc<CR>')


-- Explorer Tree
nm('<leader>e',':NvimTreeToggle<CR>')
nm('<leader>E',':NvimTreeFocus<CR>')

-- Outline
nm('<leader>a','<cmd>AerialToggle<CR>')

-- Task Runners
nm('<leader>cr',':Greyjoy<CR>')


-- Diagnostics
nm('<leader>sd',':TroubleToggle<CR>')
nm('<leader>nd',function() require("trouble").next({skip_groups = true, jump = true}); end)
nm('<leader>pd',function() require("trouble").previous({skip_groups = true, jump = true}); end)

-- Terminal
nm('<leader>tt', ':ToggleTerm<CR>')
vm('<leader>ts', ':ToggleTermSendVisualSelection<CR>')

nm('<leader>gb',':ToggleBlame window<CR>')
nm('<leader>ts',':TSJToggle<CR>')
nm('<leader>rr',':GoRename<CR>')
nm('<leader>ie',':GoIfErr<CR>')
