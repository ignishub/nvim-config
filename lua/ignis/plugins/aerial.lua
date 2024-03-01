require("aerial").setup({
    autojump = true,
    placement_editor_edge = false,
    close_on_select = true,
    nav = {
        autojump = true,
    },
})

require("telescope").load_extension("aerial")
