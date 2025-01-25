return {
  { -- Flutter tools setup
    'akinsho/flutter-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
    opts = {
      ui = {
        border = 'none',
      },
      dev_log = {
        enabled = false,
      },
      debugger = {
        enabled = true,
        run_via_dap = true,
      },
    },
    config = function()
      require('telescope').load_extension 'flutter' -- 必要
      -- キーマッピング
      vim.keymap.set('n', '<leader>Fr', ':FlutterReload<CR>', { silent = true, desc = 'Flutter Reload' })
      vim.keymap.set('n', '<leader>FR', ':FlutterRestart<CR>', { silent = true, desc = 'Flutter Restart' })
      vim.keymap.set('n', '<leader>Fe', ':FlutterEmulators<CR>', { silent = true, desc = 'Flutter Emulators' })
      vim.keymap.set('n', '<leader>0', require('telescope').extensions.flutter.commands, { desc = 'Open command Flutter' })
    end,
  },
}
