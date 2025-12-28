vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    -- Compile in split terminal
    vim.keymap.set('n', '<C-b>', function()
      vim.cmd('w')
      vim.cmd('split | terminal javac ' .. vim.fn.expand('%'))
    end, { buffer = true })
    
    -- Compile and run in split terminal
    vim.keymap.set('n', '<C-r>', function()
      vim.cmd('w')
      local filename = vim.fn.expand('%:r')
      vim.cmd('split | terminal javac ' .. vim.fn.expand('%') .. ' && java ' .. filename)
    end, { buffer = true })
  end
})
-- set leader to ' '
vim.g.mapleader = ' '
-- Open netrw (file explorer)
vim.keymap.set('n', '<leader>e', ':Explore<CR>')
-- Terminal mode mappings
-- Exit terminal mode with Esc instead of Ctrl+\ Ctrl+n
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

