-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lazyvim.util").get_root = vim.loop.cwd

--vim.diagnostic.config({ virtual_text = false })

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.diagnostic.config({
      virtual_text = false,
      virtual_lines = { only_current_line = true },
      signs = true,
      underline = true,
      update_in_insert = false,
    })
  end,
})
