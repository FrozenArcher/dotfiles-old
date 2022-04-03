local view = require'nvim-tree.view'
local delta = 1
local offset = 24 + delta

local M = {}
-- move bufferline to offset
M.move_bar = function (_offset)
    require'bufferline.state'.set_offset(_offset, 'Nvim Tree')
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

return M
