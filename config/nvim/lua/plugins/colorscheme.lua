return {
  "bitstream",
  name = "bitstream",
  dev = true,
  priority = 1000, -- ensure it loads early if it's your colorscheme
  config = function()
    -- apply theme
    vim.cmd.colorscheme("bitstream")

    -- reload keymap
    vim.keymap.set("n", "<leader>tr", function()
      for k in pairs(package.loaded) do
        if k:match("^bitstream") then
          package.loaded[k] = nil
        end
      end
      vim.cmd.colorscheme("bitstream")
      print("Bitstream theme reloaded!")
    end, { desc = "Reload bitstream theme" })
  end,
}