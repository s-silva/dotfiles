require("neo-tree").setup({
  close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
  enable_git_status = false,
  enable_diagnostics = false,
  source_selector = {
    winbar = true,
    statusline = false,
    sources = {
      { source = "filesystem" },
      { source = "buffers" },
      { source = "document_symbols" }
    }
  },
  sources = {
    "filesystem",
    "buffers",
    "document_symbols"
  },
})