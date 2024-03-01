require("ignis.plugins.lazy_install")

require('lazy').setup({
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { 'nvim-treesitter/nvim-treesitter'},
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  { 'L3MON4D3/LuaSnip' },
  { "williamboman/mason.nvim" },
  {
    "ray-x/lsp_signature.nvim", event = "VeryLazy", config = function(_, opts) require 'lsp_signature'.setup(opts) end
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension("lazygit")
    end,
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    { 'onsails/lspkind.nvim' },
        {'romgrk/barbar.nvim',
        dependencies = {
          'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
          'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        opts = {
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
    {
        'nvimdev/lspsaga.nvim',
        event = "LspAttach",
        config = function()
            require('lspsaga').setup({})
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter', -- optional
            'nvim-tree/nvim-web-devicons',     -- optional
        },
    },
    { 'VidocqH/lsp-lens.nvim' },
    {
        "ray-x/go.nvim",
        dependencies = {  -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = {"CmdlineEnter"},
        ft = {"go", 'gomod'},
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },
    { 'Pocco81/auto-save.nvim' },
    { 'nvim-tree/nvim-tree.lua' },
    {
        'stevearc/aerial.nvim',
        opts = {

        },
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            use_diagnostic_signs = true,
            auto_open = true,
            auto_close = true,
            severity = vim.diagnostic.severity.ERROR,
        },
    },
    { 'desdic/greyjoy.nvim' },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'xiyaowong/telescope-emoji.nvim' },
    { 'Pocco81/auto-save.nvim' },
    { 'folke/lsp-colors.nvim' },
    { 'navarasu/onedark.nvim' },
    { 'nvim-lualine/lualine.nvim' },
    { 'numToStr/Comment.nvim' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'akinsho/toggleterm.nvim', version = "*", config = true},
    { 'rcarriga/nvim-notify' },
    { 'FelipeLema/cmp-async-path' },
    { 'hrsh7th/cmp-emoji' },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
	    build = "make install_jsregexp"
    },
    {
        'smoka7/hop.nvim',
        version = "*",
        opts = {},
    },
    {
        'tpope/vim-surround',
    },
    {
        'krivahtoo/silicon.nvim',
    },
    {
        "FabijanZulj/blame.nvim"
    },
    {
        'Wansmer/treesj',
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        config = function()
            require('treesj').setup({--[[ your config ]]})
        end,
    },
    {
        'sindrets/diffview.nvim',
    },
    {
        "ellisonleao/carbon-now.nvim",
        lazy = true,
        cmd = "CarbonNow",
    },{
        'gelguy/wilder.nvim'
    }
})
-- Цветовая схема
require('onedark').setup {
    style = 'deep'
}
require('onedark').load()

require('Comment').setup()
require("auto-save").setup({
    debounce_delay = 1000,
    trigger_events = {'TextChanged'},
})
require("mason").setup()
require('lsp-lens').setup({
    sections = {                      -- Enable / Disable specific request
        definition = function(count)
            return ""
        end,
    },
})

require('carbon-now').setup()
require("nvim-tree").setup()
require('auto-save').setup()
local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})
wilder.set_option('renderer', wilder.popupmenu_renderer({
    highlights = {
        accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 1}, {a = 1}, {foreground = '#f4468f'}}),
    }, 
    highlighter = wilder.basic_highlighter(),
    -- 'single', 'double', 'rounded' or 'solid'
    -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
    border = 'rounded',
}))

require('ignis.plugins.barbar')
require('ignis.plugins.toggleterm')
require('ignis.plugins.nvimtree')
require('ignis.plugins.lualine')
require('ignis.plugins.go')
require('ignis.plugins.aerial')
require('ignis.plugins.treesitter')
require('ignis.plugins.telescope')
require('ignis.plugins.greyjoy')
require('ignis.plugins.lsp')
require('ignis.plugins.hop')
