-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>e', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true }, -- ファイルツリーのトグル
    { '<leader>er', ':Neotree refresh<CR>', desc = 'NeoTree refresh', silent = true }, -- ファイルツリーを更新
    { '<leader>en', ':Neotree focus<CR>', desc = 'NeoTree focus', silent = true }, -- ツリー内でフォーカス
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['<CR>'] = 'open', -- Enterでファイル/ディレクトリを開く
          ['a'] = 'add', -- 'a'でファイルやディレクトリを作成
          ['d'] = 'delete', -- 'd'でファイルやディレクトリを削除
          ['r'] = 'rename', -- 'r'でファイルやディレクトリの名前を変更
          ['y'] = 'copy', -- 'y'でファイルをコピー
          ['x'] = 'cut', -- 'x'でファイルをカット
          ['p'] = 'paste', -- 'p'で貼り付け
        },
      },
    },
  },
}
