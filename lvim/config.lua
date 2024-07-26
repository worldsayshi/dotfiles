-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
  { "nvim-lua/plenary.nvim" },
  -- { "github/copilot.vim" },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
  { "ZSaberLv0/ZFVimDirDiff" },
  { "ZSaberLv0/ZFVimJob" },
  { "ZSaberLv0/ZFVimIgnore" },
  { "ZSaberLv0/ZFVimBackup" }
}

-- Disable autocompletion appearing without asking for it
--lvim.builtin.cmp.active = true
--lvim.builtin.cmp.autocomplete = false
lvim.builtin.cmp.completion.autocomplete = false

-- TODO: https://stackoverflow.com/a/73434494/439034

-- I want the following mappings:
-- map Ö <c-[>
-- map Ä <c-]>

lvim.keys.normal_mode["Ö"] = "<c-[>"
lvim.keys.normal_mode["Ä"] = "<c-]>"
