return {
  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('fzf-lua').setup {
        defaults = {
          git_icons = false,
          file_icons = false,
          color_icons = false,
        },
      }
      local fzf = require 'fzf-lua'

      vim.keymap.set('n', '<leader>sh', fzf.helptags, { desc = '[S]earch [H]elp' })
      vim.keymap.set('n', '<leader>sk', fzf.keymaps, { desc = '[S]earch [K]eymaps' })
      vim.keymap.set('n', '<leader>sf', fzf.files, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', '<leader>ss', fzf.builtin, { desc = '[S]earch [S]elect Telescope' })
      vim.keymap.set('n', '<leader>sw', fzf.grep_cWORD, { desc = '[S]earch current [W]ord' })
      vim.keymap.set('n', '<leader>sg', fzf.live_grep, { desc = '[S]earch by [G]rep' })
      vim.keymap.set('n', '<leader>sd', fzf.diagnostics_document, { desc = '[S]earch [D]iagnostics' })
      vim.keymap.set('n', '<leader>sd', fzf.diagnostics_workspace, { desc = '[S]earch [D]iagnostics (Workspace)' })
      vim.keymap.set('n', '<leader>sr', fzf.resume, { desc = '[S]earch [R]esume' })
      vim.keymap.set('n', '<leader>s.', fzf.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
      vim.keymap.set('n', '<leader><leader>', fzf.buffers, { desc = '[ ] Find existing buffers' })

      local km = vim.keymap

      -- km.set('n', '<leader>p', require('fzf-lua').files, { desc = 'Fzf Files' })
      --
      -- km.set('n', '<leader>r', require('fzf-lua').registers, { desc = 'Registers' })
      --
      -- km.set('n', '<leader>M', require('fzf-lua').marks, { desc = 'Marks' })
      --
      -- km.set('n', '<leader>f', require('fzf-lua').live_grep, { desc = 'Fzf Grep' })
      --
      -- km.set('n', '<leader>b', require('fzf-lua').buffers, { desc = 'Fzf Buffers' })
      --
      -- km.set('n', '<leader>j', require('fzf-lua').helptags, { desc = 'Help Tags' })
      --
      -- km.set('n', '<leader>gc', require('fzf-lua').git_bcommits, { desc = 'Browse File Commits' })
      --
      -- km.set('n', '<leader>gs', require('fzf-lua').git_status, { desc = 'Git Status' })
      --
      -- km.set('n', '<leader>s', require('fzf-lua').spell_suggest, { desc = 'Spelling Suggestions' })
      --
      -- km.set('n', '<leader>cj', require('fzf-lua').lsp_definitions, { desc = 'Jump to Definition' })
      --
      -- km.set('n', '<leader>cs', ":lua require'fzf-lua'.lsp_document_symbols({winopts = {preview={wrap='wrap'}}})<cr>", { desc = 'Document Symbols' })
      --
      -- km.set('n', '<leader>cr', require('fzf-lua').lsp_references, { desc = 'LSP References' })
      --
      -- km.set('n', '<leader>cd', ":lua require'fzf-lua'.diagnostics_document({fzf_opts = { ['--wrap'] = true }})<cr>", { desc = 'Document Diagnostics' })

      -- Built in LSP stuff
      -- km.set("n", "<leader>ca", function()
      --   vim.lsp.buf.code_action()
      -- end, { desc = "Code Actions" })

      km.set(
        'n',
        '<leader>ca',
        ":lua require'fzf-lua'.lsp_code_actions({ winopts = {relative='cursor',row=1.01, col=0, height=0.2, width=0.4} })<cr>",
        { desc = 'Code Actions' }
      )
    end,
  },
}
