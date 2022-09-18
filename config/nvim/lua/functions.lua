-- Telescope bindings
function _find_files()
  local is_git = os.execute("git status &>/dev/null")
  if (is_git == 0) then
      vim.cmd(":Telescope git_files")
  else
      vim.cmd(":Telescope find_files")
  end
end

-- user
function compile_command()
  vim.cmd(':silent exe "!tmux send -t 1 \'clear\' Enter"')
  vim.cmd(':silent exe "!tmux send -t 1 \'yarn open \'' .. vim.fn.expand('%:p') .. '\'\' Enter"')
end

-- switch between header/source files
function _file_exists(name)
  local f=io.open(name, 'r')
  if f~=nil then io.close(f) return true else return false end
end

function switch_source_header()
  local buf_name = vim.api.nvim_buf_get_name(0)
  local path = buf_name:match('(.+)/.+$')
  local parent = path:match('(.+)/.+$')
  local file_name = buf_name:match('.+/(.+)$')
  local suffix = buf_name:match('[%-%w_]+%.(.*)')
  local dst_suffix = 'cpp'
  local prefix = file_name:match('([%-%w_%.]+)%.%w+$')

  if suffix == 'cpp' then 
    -- source
    dst_suffix = 'h'
  end

  -- try the same dir
  local same_path = path .. '/' .. prefix .. '.' .. dst_suffix

  if _file_exists(same_path) then
    vim.api.nvim_command('e ' .. same_path)
  else
    -- include
    local inc_path = path .. '/include/' .. prefix .. '.' .. dst_suffix
    if _file_exists(inc_path) then
      vim.api.nvim_command('e ' .. inc_path)
    else
      local parent_path = parent .. '/' .. prefix .. '.' .. dst_suffix
      vim.cmd(':echo "' .. parent_path .. '"')
      if _file_exists(parent_path) then
        vim.api.nvim_command('e ' .. parent_path)
      end
    end
  end
end