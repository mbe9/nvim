return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.clangd = opts.servers.clangd or {}

      -- Don't use Mason for clangd — use system/wrapper clangd
      opts.servers.clangd.mason = false

      local wrapper = vim.fn.getcwd() .. "/.clangd.sh"
      if vim.fn.filereadable(wrapper) == 1 then
        opts.servers.clangd.cmd = { wrapper }
      end
    end,
  },
}
