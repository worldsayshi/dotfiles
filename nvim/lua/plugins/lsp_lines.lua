return {
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()

      -- This only seems sometimes??
      -- TODO turn virtual_text into a very subtle hint so that it only serves as a guiding point
      vim.diagnostic.config({
        virtual_text = false,
        --        virtual_lines = { only_current_line = true },
        signs = true,
        underline = true,
        update_in_insert = false,
      })

      -- vim.api.nvim_create_autocmd("VimEnter", {
      --   callback = function()
      --     vim.diagnostic.config({
      --       virtual_text = false,
      --       virtual_lines = { only_current_line = true },
      --       signs = true,
      --       underline = true,
      --       update_in_insert = false,
      --     })
      --   end,
      -- })
    end,
  },
}
