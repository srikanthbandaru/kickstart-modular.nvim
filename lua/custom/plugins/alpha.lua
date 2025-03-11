local function configure()
  local theme = require 'alpha.themes.theta'
  local themeconfig = theme.config
  local dashboard = require 'alpha.themes.dashboard'
  local buttons = {
    type = 'group',
    val = {
      { type = 'text', val = 'Quick links', opts = { hl = 'SpecialComment', position = 'center' } },
      { type = 'padding', val = 1 },
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '  Find file', ':Telescope find_files<CR>'),
      dashboard.button('r', '  Recent files', ':Telescope oldfiles<CR>'),
      dashboard.button('u', '󱐥  Update plugins', '<cmd>Lazy sync<CR>'),
      dashboard.button('t', '  Install language tools', '<cmd>Mason<CR>'),
      dashboard.button('q', '󰩈  Quit', '<cmd>qa<CR>'),
    },
    position = 'center',
  }

  -- hand-drawn anscii art inspired by
  -- https://www.deviantart.com/mariomaniacyt/art/Blinky-Pixel-990898408
  theme.header.val = {
    [[                                   ████████                                  ]],
    [[                              ████▒▒▒▒▒▒▒▒▒▒████                             ]],
    [[                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                           ]],
    [[                          ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                         ]],                                
    [[                                ▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒██                         ]],
    [[                          ████    ▒▒▒▒▒████    ▒▒▒██                         ]],
    [[                        ██████    ▒▒▒▒▒████    ▒▒▒▒▒██                       ]],
    [[                        ██▒▒▒    ▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒██                       ]],
    [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                       ]],
    [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                       ]],
    [[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                       ]],
    [[                        ██▒▒  ▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒  ▒▒██                       ]],
    [[                        ██      ▒▒▒▒▒    ▒▒▒▒▒      ██                       ]],
  }

  vim.api.nvim_set_hl(0, 'CustomLightHeader', { fg = '#313244' })
  theme.header.opts = {
    hl = 'CustomLightHeader',
    position = 'center',
  }

  themeconfig.layout[6] = buttons

  return themeconfig
end

return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('alpha').setup(configure())
  end,
}
