return {
  {
    'nvim-telescope/telescope-project.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    vim.keymap.set('n', '<leader>p', function()
      require('telescope').extensions.project.project {}
    end, { desc = 'Open [P]roject', noremap = true, silent = true }),
  },
}
