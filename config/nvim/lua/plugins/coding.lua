return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<tab>"] = cmp.mapping.confirm({ select = true }),
        ["<CR>"] = cmp.config.disable,
        ["<BS>"] = cmp.mapping.abort(),
      })
    end,
  },
}
