-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim',
  },
  cmd = 'Neotree',
  keys = {
    -- key mapping to reveal the current file
    { '\\', '<cmd>Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    -- key mapping to toggle Neo-Tree. saves the last state of the tree
    { '<leader>e', '<cmd>Neotree toggle<CR>', desc = 'Toggle Neo-Tree' },
  },
  opts = {
    filesystem = {
      filtered_items = {
        -- visible = true, -- Show hidden files by default
        hide_dotfiles = false,
        hide_gitignored = true,
        never_show = {
          '.git',
        },
      },
      window = {
        position = 'right', -- open Neo-Tree on the right side
        mappings = {
          ['\\'] = 'close_window', -- key mapping to close the Neo-Tree window
        },
      },
    },
  },
}

