-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lazyvim.util").get_root = vim.loop.cwd

--vim.diagnostic.config({ virtual_text = false })
