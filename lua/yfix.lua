local M = {}

M.config = {
  -- center y axis in insert mode
  insert_mode = true,
  -- center y axis in normal mode
  normal_mode = true,
}

local function center(insert_mode)
  local line = vim.api.nvim_win_get_cursor(0)[1]
  if line ~= vim.b.last_line then
    vim.cmd("norm! zz")
    vim.b.last_line = line
    if insert_mode then
      local column = vim.fn.getcurpos()[5]
      vim.fn.cursor(line, column)
    end
  end
end

function M.setup(opts)
  M.config = vim.tbl_extend("force", M.config, opts or {})

  local g = vim.api.nvim_create_augroup("YFix", {clear=true})

  if M.config.normal_mode then
    vim.api.nvim_create_autocmd("CursorMoved", {
      group = g,
      callback = function ()
        center(false)
      end,
    })
  end

  if M.config.insert_mode then
    vim.api.nvim_create_autocmd("CursorMovedI", {
      group = g,
      callback = function ()
        center(true)
      end,
    })
  end
end

return M
