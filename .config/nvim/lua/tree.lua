local view = require'nvim-tree.view'
local delta = 1
local offset = 24 + delta

local M = {}
-- move bufferline to offset
M.move_bar = function (offset)
    require'bufferline.state'.set_offset(offset, 'Nvim Tree')
end
-- toggle tree & move barbar
M.toggle = function ()
    if view.is_visible() then
        view.close()
        M.move_bar(0)
    else
        M.move_bar(offset)
        require'nvim-tree'.find_file(true)
    end
end
-- run this on init
M.setup = function ()
    if view.is_visible() then
        M.move_bar(offset)
    end
end

return M
