local view = require'nvim-tree.view'

local M = {}
M.move_bar = function ()
    require'bufferline.state'.set_offset(25, 'Nvim Tree')
end
-- toggle tree & move barbar
M.toggle = function ()
    if view.is_visible() then
        view.close()
        require'bufferline.state'.set_offset(0)
    else
        M.move_bar()
        require'nvim-tree'.find_file(true)
    end
end

return M
