-- Autocomplete
function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use <C-j> and <C-k> to navigate completion
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
vim.keymap.set('i', '<C-j>', 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()',
  opts)
vim.keymap.set('i', '<C-k>', [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <TAB> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
vim.keymap.set('i', '<TAB>', [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- Use <C-space> to trigger completion
vim.keymap.set('i', '<C-Space>', "coc#refresh()", { silent = true, expr = true })

-- Use `<Leader>cj` and `<Leader>ck` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
vim.keymap.set('n', '<Leader>cj', '<Plug>(coc-diagnostic-prev)', { silent = true })
vim.keymap.set('n', '<Leader>ck', '<Plug>(coc-diagnostic-next)', { silent = true })

-- GoTo code navigation
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', { silent = true })
vim.keymap.set('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
vim.keymap.set('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
vim.keymap.set('n', 'gr', '<Plug>(coc-references)', { silent = true })

-- Use K to show documentation in preview window
function _G.show_docs()
  local cw = vim.fn.expand('<cword>')
  if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
    vim.api.nvim_command('h ' .. cw)
  elseif vim.api.nvim_eval('coc#rpc#ready()') then
    vim.fn.CocActionAsync('doHover')
  else
    vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
  end
end

vim.keymap.set('n', 'K', '<CMD>lua _G.show_docs()<CR>', { silent = true })

-- Symbol renaming
vim.keymap.set('n', '<Leader>cr', '<Plug>(coc-rename)', { silent = true })

-- Formatting file
vim.keymap.set('n', '<Leader>cf', '<Plug>(coc-format-document)', { silent = true })

-- Apply codeAction to the selected region
-- Example: `<leader>aap` for current paragraph
opts = { silent = true, nowait = true }
vim.keymap.set('x', '<Leader>ca', '<Plug>(coc-codeaction-selected)', opts)
vim.keymap.set('n', '<Leader>ca', '<Plug>(coc-codeaction-selected)', opts)
