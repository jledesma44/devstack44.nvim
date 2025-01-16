-- Standalone plugins with less than 10 lines of config go here
return {
  {
    -- Tmux & split window navigation
    'christoomey/vim-tmux-navigator',
  },
  {
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
  },
  {
    -- Powerful Git integration for Vim
    'tpope/vim-fugitive',
  },
  {
    -- GitHub integration for vim-fugitive
    'tpope/vim-rhubarb',
  },
  {
    -- Hints keybinds
    'folke/which-key.nvim',
  },
  {
    -- Autopairs parentheses, brackets, quotes, etc.
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    opts = {},
  },
  {
    -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    -- High-performance color highlighter
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
  {
    --Goyo for markdown files removes distractions
    'junegunn/goyo.vim',
  },
  {
    'preservim/vim-pencil',
    lazy = false,
    config = function()
      vim.cmd [[runtime! plugin/pencil.vim]]
      vim.g.tex_conceal = ''
      vim.g['pencil#conseallevel'] = 0
      vim.g['pencil#initConceal'] = 0
      vim.g['pencil#wrapModeDefault'] = 'soft'
      vim.cmd [[autocmd FileType markdown,mkd call pencil#init({'wrap', 'soft'})]]
    end,
  },
}
