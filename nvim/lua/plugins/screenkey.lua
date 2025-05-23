return {
  'NStefan002/screenkey.nvim',
  lazy = false,
  config = function()
    require('screenkey').setup {
      win_opts = {
        row = vim.o.lines - vim.o.cmdheight - 1,
        col = vim.o.columns - 1,
        relative = 'editor',
        anchor = 'SE',
        width = 40,
        height = 3,
        border = 'single',
        title = 'Screenkey',
        title_pos = 'center',
      },
      keys = {
        ['<TAB>'] = '󰌒',
        ['<CR>'] = '󰌑',
        ['<ESC>'] = 'Esc',
        ['<SPACE>'] = '␣',
        ['<BS>'] = '󰌥',
        ['<LEFT>'] = '',
        ['<RIGHT>'] = '',
        ['<UP>'] = '',
        ['<DOWN>'] = '',
      },
      compress_after = 20,
      clear_after = 10,
    }
  end,
}
