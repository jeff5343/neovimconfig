-- show absolute line numbers
vim.o.number = true

-- enable mouse support in all modes
vim.o.mouse = 'a'

-- hide the default mode text
vim.o.showmode = false

-- use the system clipboard
-- scheduled to avoid slowing startup during early init
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- preserve indentation structure on wrapped lines
vim.o.breakindent = true

-- persist undo history across sessions.
vim.o.undofile = true

-- case-insensitive search by default
vim.o.ignorecase = true
-- become case-sensitive when uppercase appears in the query.
vim.o.smartcase = true

-- always reserve sign column space (diagnostics/git signs)
vim.o.signcolumn = 'yes'

-- Faster CursorHold/autocmd responsiveness.
vim.o.updatetime = 250

-- Time to wait for a mapped key sequence.
vim.o.timeoutlen = 300

-- open vertical splits to the right.
vim.o.splitright = true
-- open horizontal splits below.
vim.o.splitbelow = true

-- show whitespace markers.
vim.o.list = true
-- whitespace symbols for tabs, trailing spaces, and nbsp.
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- live preview for :substitute.
vim.o.inccommand = 'split'

-- highlight the current line.
vim.o.cursorline = true

-- keep context lines above/below the cursor.
vim.o.scrolloff = 10

-- ask for confirmation on actions that would fail with unsaved changes.
vim.o.confirm = true
