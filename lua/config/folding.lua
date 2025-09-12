local M = {}

-- Custom Dart foldexpr that works like VS Code
function M.dart_foldexpr()
  local line = vim.fn.getline(vim.v.lnum)
  
  -- Fold widget constructors and their children
  if line:match('^%s*%w+%(%s*$') or line:match('^%s*%w+%.%w+%(%s*$') then
    return 'a1'  -- Start fold
  elseif line:match('^%s*%);%s*$') or line:match('^%s*%)[,;]%s*$') then
    return 's1'  -- End fold
  elseif line:match('^%s*%w+%({%s*$') or line:match('^%s*%w+%.%w+%({%s*$') then
    return 'a1'  -- Start fold for curly braces
  elseif line:match('^%s*%}%);%s*$') or line:match('^%s*%}[,;]%s*$') then
    return 's1'  -- End fold for curly braces
  end
  
  return '='
end

-- Custom fold text for Dart
function M.dart_foldtext()
  local start_line = vim.fn.getline(vim.v.foldstart)
  local end_line = vim.fn.getline(vim.v.foldend)
  local line_count = vim.v.foldend - vim.v.foldstart + 1
  
  -- Clean up the widget name
  local widget_name = start_line:match('^%s*(%w+)%(%s*$') or 
                     start_line:match('^%s*(%w+%.%w+)%(%s*$') or
                     start_line:match('^%s*(%w+)%({%s*$') or
                     start_line:match('^%s*(%w+%.%w+)%({%s*$') or
                     'Widget'
  
  return string.format('⮞ %s (...) %d lines ⮜', widget_name, line_count)
end

-- Smart folding that works like VS Code
function M.smart_fold()
  local current_line = vim.fn.line('.')
  local line = vim.fn.getline(current_line)
  
  -- Check if current line is foldable
  if line:match('^%s*%w+%(%s*$') or line:match('^%s*%w+%.%w+%(%s*$') or
     line:match('^%s*%w+%({%s*$') or line:match('^%s*%w+%.%w+%({%s*$') then
    -- Try to create fold if it doesn't exist
    vim.cmd('normal! zf%')  -- Create fold from here to matching bracket
    vim.cmd('normal! zc')   -- Close the fold
    return
  end
  
  -- If not on a foldable line, try to find one above
  for i = current_line - 1, 1, -1 do
    local l = vim.fn.getline(i)
    if l:match('^%s*%w+%(%s*$') or l:match('^%s*%w+%.%w+%(%s*$') or
       l:match('^%s*%w+%({%s*$') or l:match('^%s*%w+%.%w+%({%s*$') then
      vim.fn.cursor(i, 1)
      -- Check if there's already a fold here
      if vim.fn.foldclosed(i) == -1 then
        vim.cmd('normal! zf%')  -- Create fold
      end
      vim.cmd('normal! zc')     -- Close fold
      return
    end
  end
  
  -- Fallback: try normal fold
  local success, _ = pcall(vim.cmd, 'normal! zc')
  if not success then
    vim.notify("No fold found at this position", vim.log.levels.WARN)
  end
end

function M.smart_unfold()
  local success, _ = pcall(vim.cmd, 'normal! zo')
  if not success then
    vim.notify("No fold to unfold", vim.log.levels.WARN)
  end
end

-- Create manual fold for Dart widgets
function M.create_widget_fold()
  local line = vim.fn.getline('.')
  
  if line:match('^%s*%w+%(%s*$') or line:match('^%s*%w+%.%w+%(%s*$') or
     line:match('^%s*%w+%({%s*$') or line:match('^%s*%w+%.%w+%({%s*$') then
    -- Move to matching bracket and create fold
    vim.cmd('normal! %')
    vim.cmd('normal! V%kzf')
    vim.cmd('normal! zc')
  else
    vim.notify("Not on a widget constructor", vim.log.levels.WARN)
  end
end

function M.setup()
  -- Default folding settings
  vim.opt.foldmethod = "expr"
  vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
  vim.opt.foldlevel = 99
  vim.opt.foldlevelstart = 99
  vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"
  
  -- Auto commands for file types
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "dart",
    callback = function()
      vim.opt_local.foldmethod = "expr"
      vim.opt_local.foldexpr = "v:lua.require('config.folding').dart_foldexpr()"
      vim.opt_local.foldtext = "v:lua.require('config.folding').dart_foldtext()"
    end
  })
end

return M