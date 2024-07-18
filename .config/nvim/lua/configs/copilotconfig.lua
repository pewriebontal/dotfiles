-- copilot_config.lua
local M = {}

M.setup = function()
    require("copilot").setup({
        panel = {
            enabled = true,
            auto_refresh = false,
            keymap = {
                jump_prev = "[[",
                jump_next = "]]",
                accept = "<CR>",
                refresh = "gr",
                open = "<M-CR>",
            },
            layout = {
                position = "bottom", -- | top | left | right
                ratio = 0.4,
            },
        },
        suggestion = {
            enabled = true,
            auto_trigger = true,
            debounce = 75,
            keymap = {
                accept = "<CR>",
                accept_word = "<C-Tab>",
                accept_line = false,
                next = "<C-n>",
                prev = "<C-p>",
                dismiss = "<Esc>",
            },
        },
        copilot_node_command = 'node',
    })
end

return M
