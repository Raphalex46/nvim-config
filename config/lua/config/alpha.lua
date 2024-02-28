require('alpha').setup(require('alpha.themes.dashboard').config)

local db = require('alpha.themes.dashboard')
local ascii = require('ascii')
db.section.header.val = ascii.get_random('text', 'neovim')
db.section.buttons.val = {
  db.button("SPC sc", " Load current directory session", "<cmd>SessionManager load_current_dir_session<CR>"),
  db.button("SPC sl", "  Load last session", "<cmd>SessionManager load_last_session<CR>"),
  db.button("e", "  New file", "<cmd>ene <CR>"),
  db.button("SPC f o", "  Recently opened files", "<cmd>Telescope oldfiles<CR>"),
  db.button("SPC f f", "󰈞  Find file", "<cmd>Telescope find_files<CR>"),
  db.button("SPC f s", "  Recent sessions", "<cmd>SessionManager load_session<CR>"),
  db.button("SPC f m", "  Explore bookmarks", "<cmd> Telescope marks<CR>"),
  db.button("SPC f g", "  Find word", "<cmd>Telescope live_grep<CR>"),
}
