package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"

vim.g.barbar_auto_setup = false;
vim.api.nvim_set_option('updatetime', 300)

require("lifelesspixels.remap")
require("lifelesspixels.packer")
