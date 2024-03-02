local term_open = false
local term_win_id = 0

local function terminal_open()
  vim.cmd('botright split | resize 10 | term')
  term_win_id = vim.fn.win_getid()
end

local function terminal_open_or_jump()
  if term_open then
    terminal_open()
    term_open = true
  else
    if vim.fn.win_gotoid(term_win_id) == 0 then
      terminal_open()
    end
    vim.fn.win_gotoid(term_win_id)
  end
end

return {
  open_or_jump = terminal_open_or_jump
}
