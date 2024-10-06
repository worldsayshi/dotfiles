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
      local km = vim.keymap

      km.set('n', '<leader>p', require('fzf-lua').files, { desc = 'Fzf Files' })

      km.set('n', '<leader>r', require('fzf-lua').registers, { desc = 'Registers' })

      km.set('n', '<leader>m', require('fzf-lua').marks, { desc = 'Marks' })

      km.set('n', '<leader>f', require('fzf-lua').live_grep, { desc = 'Fzf Grep' })

      km.set('n', '<leader>b', require('fzf-lua').buffers, { desc = 'Fzf Buffers' })

      km.set('n', '<leader>j', require('fzf-lua').helptags, { desc = 'Help Tags' })

      km.set('n', '<leader>gc', require('fzf-lua').git_bcommits, { desc = 'Browse File Commits' })

      km.set('n', '<leader>gs', require('fzf-lua').git_status, { desc = 'Git Status' })

      km.set('n', '<leader>s', require('fzf-lua').spell_suggest, { desc = 'Spelling Suggestions' })

      km.set('n', '<leader>cj', require('fzf-lua').lsp_definitions, { desc = 'Jump to Definition' })

      km.set('n', '<leader>cs', ":lua require'fzf-lua'.lsp_document_symbols({winopts = {preview={wrap='wrap'}}})<cr>", { desc = 'Document Symbols' })

      km.set('n', '<leader>cr', require('fzf-lua').lsp_references, { desc = 'LSP References' })

      km.set('n', '<leader>cd', ":lua require'fzf-lua'.diagnostics_document({fzf_opts = { ['--wrap'] = true }})<cr>", { desc = 'Document Diagnostics' })

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
