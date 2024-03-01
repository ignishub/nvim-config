local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('lspconfig').lua_ls.setup({})

lsp_zero.setup_servers({'lua_ls', 'rust_analyzer','gopls',})
lsp_zero.set_sign_icons({
    Error = ' ', --🅴," ""󰢃 "
    Warn = ' ', --🆆," "
    Hint = '󰌶', --🅸," " "󰛩 "
    Info = ' ', --🅷," ","󰗡 "
})

local cmp = require('cmp')

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'async_path' }, 
        { name = 'luasnip' },
    },
    snippet = {
      expand = function(args)
        require'luasnip'.lsp_expand(args.body)
      end
    },
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
          local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
          local strings = vim.split(kind.kind, "%s", { trimempty = true })
          kind.kind = " " .. (strings[1] or "") .. " "
          kind.menu = "    (" .. (strings[2] or "") .. ")"

          return kind
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        ['<C-Space>'] = cmp.mapping.complete(),
    })
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').gopls.setup {
  capabilities = capabilities,
}

local cfg = {
    bind = true,
    handler_opts = {
        border = "rounded"   -- double, rounded, single, shadow, none, or a table of borders
    },
    hint_prefix = '🔎 ',
} -- add your config here

require "lsp_signature".setup(cfg)


-- Function to check if a floating dialog exists and if not
  -- then check for diagnostics under the cursor
  function OpenDiagnosticIfNoFloat()
    for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
      if vim.api.nvim_win_get_config(winid).zindex then
        return
      end
    end
    -- THIS IS FOR BUILTIN LSP
    vim.diagnostic.open_float(0, {
      scope = "cursor",
      focusable = false,
      close_events = {
        "CursorMoved",
        "CursorMovedI",
        "BufHidden",
        "InsertCharPre",
        "WinLeave",
      },
    })
  end
  -- Show diagnostics under the cursor when holding position
  vim.api.nvim_create_augroup("lsp_diagnostics_hold", { clear = true })
  vim.api.nvim_create_autocmd({ "CursorHold" }, {
    pattern = "*",
    command = "lua OpenDiagnosticIfNoFloat()",
    group = "lsp_diagnostics_hold",
  })

