-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lazyvim.util").get_root = vim.loop.cwd

--vim.diagnostic.config({ virtual_text = false })

-- This only seems sometimes??
-- TODO turn virtual_text into a very subtle hint so that it only serves as a guiding point
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

print("Hello from init.lua")

-- Refactors the file using AI
function Refactor_file()
  local current_file = vim.fn.expand("%:p")
  vim.notify("Current file: " .. current_file, vim.log.levels.INFO)

  -- Prompt user for input
  local user_text = vim.fn.input("Enter refactor request: ")
  vim.notify("User input: " .. user_text, vim.log.levels.INFO)

  -- Save the file before refactoring
  vim.cmd("write")

  local cmd
  local file_extension = vim.fn.expand("%:e")
  vim.notify("File extension: " .. file_extension, vim.log.levels.INFO)

  if file_extension == "kind2" then
    cmd = string.format('kindcoder "%s" "%s"', current_file, user_text)
  elseif file_extension == "ts" then
    cmd = string.format('tscoder "%s" "%s"', current_file, user_text)
  else
    cmd = string.format('refactor "%s" "%s"', current_file, user_text)
  end

  vim.notify("Command: " .. cmd, vim.log.levels.INFO)

  -- Add --check flag if user_text starts with '-' or is empty
  if user_text:match("^%-") or user_text == "" then
    cmd = cmd .. " --check"
  end

  -- Execute the command
  local output = vim.fn.system("clear && " .. cmd)

  if vim.v.shell_error then
    vim.notify("Error when running `" .. cmd .. "`: " .. output, vim.log.levels.ERROR)
    return
  end

  -- Reload the file
  vim.cmd("edit!")
end

-- Set up the key mapping
vim.api.nvim_set_keymap("n", "<leader>r", ":lua Refactor_file()<CR>", { noremap = true, silent = true })
