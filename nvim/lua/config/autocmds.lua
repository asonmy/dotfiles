-- Java-specific keymaps with toggleterm
vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    -- Compile and run in toggleterm
    vim.keymap.set('n', '<C-r>', function()
      vim.cmd('w')
      local filepath = vim.fn.expand('%:p')
      local dir = vim.fn.expand('%:p:h')
      local filename = vim.fn.expand('%:t:r')
      
      -- Execute command directly in toggleterm
      require('toggleterm').exec('cd ' .. dir .. ' && javac ' .. filename .. '.java && java ' .. filename)
    end, { buffer = true })
    
    -- Just compile
    vim.keymap.set('n', '<C-b>', function()
      vim.cmd('w')
      local dir = vim.fn.expand('%:p:h')
      local filename = vim.fn.expand('%:t:r')
      
      require('toggleterm').exec('cd ' .. dir .. ' && javac ' .. filename .. '.java')
    end, { buffer = true })
  end
})
