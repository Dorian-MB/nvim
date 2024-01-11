local M = {}


M.general_custom = {
    x = {
        -- by debault past over a selection doent copy
        -- but <leader> + p does
        ["p"] = { 'p:let @+=@0<cr>:let @"=@0<cr>', "dont copy replaced text", opts = { silent = true } },
        ["<leader>p"] = { '"+p' , "past and copy over the selection"},
        -- try it yourself :
        -- foo
        -- bar
    },

    n = {
        ["<leader>R"] = {":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gc<Left><Left><Left>", "Find and Replace current word"},
        ["<leader>rr"] = {":.,$s/\\<<C-r><C-w>\\>/<C-r><C-w>/gc<Left><Left><Left>", "Find and Replace current word from current position"},
        -- .,$s to apply it from the current line (denoted by .) to the end of the file (denoted by $).
    },

    v = {
        -- Move the selected line up or down (with correct indent)
        ["J"] ={":m '>+1<CR>gv=gv", "move down the selected line"},
        ["K"] = {":m '<-2<CR>gv=gv", "move up the selected line"},
    },

    i = {
        -- Basic shortcut on most editor
        ["<M-Left>"] = {'<C-o>b',opts = { noremap = true, silent = true }, "move cursor to the end of the word"},
        ["<M-Right>"] = {'<C-o>e<C-o>l',opts = { noremap = true, silent = true }, "move cursor to the begening of the word"},
        ["<M-BS>"] = {'<M-BS>',opts = { noremap = true, silent = true },  "delete to the begening of the word"},
        ["<M-Del>"] = {'<M-Del>',opts = { noremap = true, silent = true }, "delete to the end of the word"},
        ["<C-BS>"] = {'<Esc>d0x`[i',opts = { noremap = true, silent = true },  "delete to the begening of the line"},
        ["<C-Del>"] = {'<Esc>D`[i',opts = { noremap = true, silent = true },   "delete to the end of the line"},
        -- Map Ctrl+Z to undo in insert mode --> MEGA : WARNING DONT DO IN NORMAL MODE LMAO
        ["<C-z>"] = {'<C-o>u',opts = { noremap = true, silent = true }, "undo in insert mode, WARNING DONT DO IN NORMAL MODE"},
    }
}


-- Debug keybind
----------------------------------------------------------------------
----------------------------------------------------------------------
M.dap = {
  plugin = true,
  n = {
    ["<leader>bp"] = {"<cmd> DapToggleBreakpoint <CR>", "Place break point on this line"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      function()
        require('dap-python').test_method()
      end,
    "Run Debug"
    }
  }
}


----------------------------------------------------------------------
----------------------------------------------------------------------

-- other plugins


----------------------------------------------------------------------
----------------------------------------------------------------------


-- can also use : vim.api.nvim_set_keymap()
-- or : vim.keymap.set() 
-- Warning -> Not the same
-- exemple : vim.api.nvim_set_keymap('i', '<M-Left>', '<C-o>b', { noremap = true, silent = true })



return M
