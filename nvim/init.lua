require 'core.options'
require 'core.keymaps'
vim.api.nvim_set_keymap('n', '<CR>', '<cmd>FineCmdline<CR>', { noremap = true, silent = true })

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
    require 'plugins.alpha',
    require 'plugins.autocompletion',
    require 'plugins.autorepair',
    require 'plugins.barbar',
    require 'plugins.colortheme',
    require 'plugins.comments',
    require 'plugins.discord',
    require 'plugins.fzf-lua',
    require 'plugins.gitsigns',
    require 'plugins.indent-blankline',
    require 'plugins.screenkey',
    require 'plugins.lsp',
    require 'plugins.lualine',
    require 'plugins.neotree',
    require 'plugins.nerdy',
    -- require 'plugins.fine-cmdline',
    require 'plugins.noice',
    'eandrju/cellular-automaton.nvim',
    require 'plugins.nvim-notify',
    require 'plugins.none-ls',
    require 'plugins.telescope',
    require 'plugins.treesitter',
    require 'plugins.toggleterm',
}
