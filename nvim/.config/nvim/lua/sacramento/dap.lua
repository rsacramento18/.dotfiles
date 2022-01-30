local dap = require'dap'

dap.set_log_level('trace')

vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})

-- dap.adapters.node2 = {
--   type = 'executable',
--   command = 'node',
--   args = {os.getenv('HOME') .. '/.vim/dev/vscode-node-debug2/out/src/nodeDebug.js'},
-- }

-- dap.configurations.javascript = {
--   {
--     type = 'node2',
--     request = 'launch',
--     program = '${workspaceFolder}/${file}',
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   }
-- }

dap.adapters.node2 = {
    type = 'executable',
    name = 'node2',
    command = 'node',
    args = {"/Users/work/.local/share/nvim/dapisntall/jsnode/vscode-node-debug2/out/src/vscode-node-debug2.js"}
}

dap.configurations.javascript = {
    {
        type = 'node2',
        request = 'launch',
        program = '${workspaceFolder}/${file}',
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = 'inspector',
        console = 'integratedTerminal'
    }
}
