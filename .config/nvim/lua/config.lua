-- gps should be set up before galaxyline.
require("gps-cfg")
-- complex setups for plugins
-- tree should be enabled before barbar.
require("nvim-tree-cfg")
require("barbar-cfg")
require("galaxy-cfg")
require("treesitter-cfg")
require("fterm-cfg")
require("formatter-cfg")

-- breif setups for plugins
require("colorizer").setup()
require("gitsigns").setup()
require("go").setup()
