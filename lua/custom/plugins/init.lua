-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'kiyoon/tmux-send.nvim',
    keys = {
      {
        '-',
        function()
          require('tmux_send').send_to_pane()
          -- (Optional) exit visual mode after sending
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<esc>', true, false, true), 'x', true)
        end,
        mode = { 'n', 'x' },
        desc = 'Send to tmux pane',
      },
      {
        '_',
        function()
          require('tmux_send').send_to_pane { add_newline = false }
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<esc>', true, false, true), 'x', true)
        end,
        mode = { 'n', 'x' },
        desc = 'Send to tmux pane (plain)',
      },
      {
        '<space>-',
        function()
          require('tmux_send').send_to_pane { count_is_uid = true }
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<esc>', true, false, true), 'x', true)
        end,
        mode = { 'n', 'x' },
        desc = 'Send to tmux pane w/ pane uid',
      },
      {
        '<space>_',
        function()
          require('tmux_send').send_to_pane { count_is_uid = true, add_newline = false }
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<esc>', true, false, true), 'x', true)
        end,
        mode = { 'n', 'x' },
        desc = 'Send to tmux pane w/ pane uid (plain)',
      },
      {
        '<C-_>',
        function()
          require('tmux_send').save_to_tmux_buffer()
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<esc>', true, false, true), 'x', true)
        end,
        mode = { 'n', 'x' },
        desc = 'Save to tmux buffer',
      },
    },
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 100,
    transparent_background = true,
  },

  {
    'ellisonleao/gruvbox.nvim',
    terminal_colors = true,
    priority = 1000,
    config = true,
    transparent_background = true,
  },
  { 'mfussenegger/nvim-dap' },
  { 'nvim-neotest/nvim-nio' },

  { 'ttibsi/pre-commit.nvim' },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

  {
    'https://git.sr.ht/~nedia/auto-save.nvim',
    event = { 'BufReadPre' },
    opts = {
      events = { 'InsertLeave', 'BufLeave' },
      silent = true,
      exclude_ft = { 'neo-tree' },
    },
  },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
  },
  { 'gaborvecsei/usage-tracker.nvim' },
  {
    'cshuaimin/ssr.nvim',
    module = 'ssr',
  },
}
