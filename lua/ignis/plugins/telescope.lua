require('telescope').setup {
  pickers = {
    find_files = {
      theme = "ivy",
    },
    lsp_implementations = {
        theme = "dropdown",
    },
    lsp_definitions = {
        theme = "dropdown",
    },
    lsp_references = {
        theme = "dropdown",
    }
  },
}

require("telescope").load_extension("ui-select")
require("telescope").load_extension("emoji")

