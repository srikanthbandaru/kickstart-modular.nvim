return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {
      settings = {
        -- Optimize performance
        separate_diagnostic_server = true,
        publish_diagnostic_on = 'insert_leave',
        -- Enable styled-components support if needed
        tsserver_plugins = {
          -- '@styled/typescript-styled-plugin',
        },
        -- Improve performance with these settings
        tsserver_max_memory = 'auto',
        complete_function_calls = true,
        include_completions_with_insert_text = true,
        -- Disable code lens if you find it affects performance
        code_lens = 'off',
        disable_member_code_lens = true,
      },
    },
  }
} 
