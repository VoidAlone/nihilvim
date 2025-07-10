local sn = require('snacks')
local wk = require('which-key')
wk.add({
    { "<leader><space>", sn.picker.smart()  , desc = "Smart Find Files" },
    { "<leader>,", sn.picker.buffers()  , desc = "Buffers" },
    { "<leader>/", sn.picker.grep()  , desc = "Grep" },
    { "<leader>:", sn.picker.command_history()  , desc = "Command History" },
    { "<leader>n", sn.picker.notifications()  , desc = "Notification History" },
    { "<leader>e", sn.picker.explorer()  , desc = "File Explorer" },
    -- find
    { "<leader>fb", sn.picker.buffers()  , desc = "Buffers" },
    { "<leader>fc", sn.picker.files({ cwd = vim.fn.stdpath("config") })  , desc = "Find Config File" },
    { "<leader>ff", sn.picker.files()  , desc = "Find Files" },
    { "<leader>fg", sn.picker.git_files()  , desc = "Find Git Files" },
    { "<leader>fp", sn.picker.projects()  , desc = "Projects" },
    { "<leader>fr", sn.picker.recent()  , desc = "Recent" },
    -- git
    -- { "<leader>gb", sn.picker.git_branches()  , desc = "Git Branches" },
    -- { "<leader>gl", sn.picker.git_log()  , desc = "Git Log" },
    -- { "<leader>gL", sn.picker.git_log_line()  , desc = "Git Log Line" },
    -- { "<leader>gs", sn.picker.git_status()  , desc = "Git Status" },
    -- { "<leader>gS", sn.picker.git_stash()  , desc = "Git Stash" },
    -- { "<leader>gd", sn.picker.git_diff()  , desc = "Git Diff (Hunks)" },
    -- { "<leader>gf", sn.picker.git_log_file()  , desc = "Git Log File" },
    -- Grep
    { "<leader>sb", sn.picker.lines()  , desc = "Buffer Lines" },
    { "<leader>sB", sn.picker.grep_buffers()  , desc = "Grep Open Buffers" },
    { "<leader>sg", sn.picker.grep()  , desc = "Grep" },
    { "<leader>sw", sn.picker.grep_word()  , desc = "Visual selection or word", mode = { "n", "x" } },
    -- search
    { '<leader>s"', sn.picker.registers()  , desc = "Registers" },
    { '<leader>s/', sn.picker.search_history()  , desc = "Search History" },
    { "<leader>sa", sn.picker.autocmds()  , desc = "Autocmds" },
    { "<leader>sb", sn.picker.lines()  , desc = "Buffer Lines" },
    { "<leader>sc", sn.picker.command_history()  , desc = "Command History" },
    { "<leader>sC", sn.picker.commands()  , desc = "Commands" },
    { "<leader>sd", sn.picker.diagnostics()  , desc = "Diagnostics" },
    { "<leader>sD", sn.picker.diagnostics_buffer()  , desc = "Buffer Diagnostics" },
    { "<leader>sh", sn.picker.help()  , desc = "Help Pages" },
    { "<leader>sH", sn.picker.highlights()  , desc = "Highlights" },
    { "<leader>si", sn.picker.icons()  , desc = "Icons" },
    { "<leader>sj", sn.picker.jumps()  , desc = "Jumps" },
    { "<leader>sk", sn.picker.keymaps()  , desc = "Keymaps" },
    { "<leader>sl", sn.picker.loclist()  , desc = "Location List" },
    { "<leader>sm", sn.picker.marks()  , desc = "Marks" },
    { "<leader>sM", sn.picker.man()  , desc = "Man Pages" },
    { "<leader>sp", sn.picker.lazy()  , desc = "Search for Plugin Spec" },
    { "<leader>sq", sn.picker.qflist()  , desc = "Quickfix List" },
    { "<leader>sR", sn.picker.resume()  , desc = "Resume" },
    { "<leader>su", sn.picker.undo()  , desc = "Undo History" },
    { "<leader>uC", sn.picker.colorschemes()  , desc = "Colorschemes" },
    -- LSP
    -- { "gd", sn.picker.lsp_definitions()  , desc = "Goto Definition" },
    -- { "gD", sn.picker.lsp_declarations()  , desc = "Goto Declaration" },
    -- { "gr", sn.picker.lsp_references()  , nowait = true, desc = "References" },
    -- { "gI", sn.picker.lsp_implementations()  , desc = "Goto Implementation" },
    -- { "gy", sn.picker.lsp_type_definitions()  , desc = "Goto T[y]pe Definition" },
    -- { "<leader>ss", sn.picker.lsp_symbols()  , desc = "LSP Symbols" },
    -- { "<leader>sS", sn.picker.lsp_workspace_symbols()  , desc = "LSP Workspace Symbols" },
}) 



