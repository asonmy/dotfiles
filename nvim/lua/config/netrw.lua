-- netrw settings
vim.g.netrw_banner = 0        -- Hide banner (press I to toggle)
vim.g.netrw_liststyle = 0     -- Tree view
vim.g.netrw_winsize = 25      -- Width when opening in split

-- Enable line numbers in netrw
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.opt_local.number = true
    vim.opt_local.relativenumber = true
  end
})

-- set o to open files with the default system application
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.keymap.set('n', 'o', function()
      local netrw_dir = vim.b.netrw_curdir
      local filename = vim.fn.expand("<cfile>")
      local full_path = netrw_dir .. "/" .. filename
      
      -- Debug output
      print("Directory: " .. netrw_dir)
      print("Filename: " .. filename)
      print("Full path: " .. full_path)
      
      vim.fn.jobstart({"xdg-open", full_path}, { detach = true })
    end, { buffer = true })
  end
})
