return {
  "WillEhrendreich/Ionide-nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  config = function()
    -- Initialize Ionide with standard Neovim LSP defaults
    local ionide_config = require("ionide").setup({
      -- Customize FSAC behavior here if needed
      -- e.g., automatic workspace initialization
    })

    -- Bind it directly to Neovim's native LSP configuration registry
    vim.lsp.config("fsautocomplete", ionide_config)
    vim.lsp.enable("fsautocomplete")
  end,
}
