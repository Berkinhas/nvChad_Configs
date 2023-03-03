--require('onedark').setup {
--    style = 'cool'
--}
require('onedark').load()

-- theme config

-- Lua
require('onedark').setup  {
    style = 'cool',
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {
			bright_orange = "#ff8800",    -- define a new color
			green = '#00ffaa',            -- redefine an existing color
		}, -- Override default colors
    highlights = {
			["@keyword"] = {fg = '$green'},
			["@string"] = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
			["@function"] = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
			["@function.builtin"] = {fg = '#0059ff'}
		}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
