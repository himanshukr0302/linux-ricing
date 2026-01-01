-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 
-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "carbonfox",

    hl_override = {
        -- CORRECTED: Use 'bg' instead of 'guibg' for transparency
        Normal = { bg = "none" },
        NonText = { bg = "none" }, 
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
    },
}

-- M.nvdash = { load_on_startup = true }

-- Uncommenting this section for transparency as suggested by gemini on 21 Oct 2025
M.ui = {
     transparency = true,
     --  tabufline = {
     --     lazyload = false
     -- }
}

return M

