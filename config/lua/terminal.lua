-- Terminal floating window id
local term_win_id = -1
-- Terminal buffer id
local term_buf_id = -1

-- Check if given float is open
local function float_is_open(id)
  return (id ~= -1) and vim.api.nvim_win_is_valid(id)
end

-- Check if given buffer exists
local function buf_exists(id)
  return (id ~= -1) and vim.api.nvim_buf_is_valid(id)
end

-- Open terminal float
local function open_float(buf_id)
  local width = vim.o.columns
  local height = vim.o.lines
  term_win_id = vim.api.nvim_open_win(
    buf_id, true, {
      relative = 'editor',
      width = width - 6,
      height = height - 6,
      bufpos = { 0, 0 },
      border = 'double',
      row = 2,
      col = 2,
    }
  )
end

-- Close terminal float
local function close_term_float()
  vim.api.nvim_win_close(term_win_id, true)
  term_win_id = -1
end


-- Main function: closes the terminal window if it already exists
-- (without closing the buffer), and opens a new floating window
-- and / or buffer if the terminal is closed
local function terminal_float_or_close()
  if float_is_open(term_win_id) then
    close_term_float()
    term_win_id = -1
  else
    local new_buf = false
    if not buf_exists(term_buf_id) then
      term_buf_id = vim.api.nvim_create_buf(false, true)
      new_buf = true
    end
    open_float(term_buf_id)
    if new_buf then
      vim.fn.termopen(os.getenv("SHELL"), { detach = 0 })
    end
  end
end

return {
  terminal_float_or_close = terminal_float_or_close,
}
