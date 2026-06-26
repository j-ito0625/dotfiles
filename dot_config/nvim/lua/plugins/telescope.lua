return {
  -- telescope-file-browser: ファイル操作 (netrw 代替)
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    keys = {
      {
        "sf",
        function()
          require("telescope").extensions.file_browser.file_browser({
            path = "%:p:h",
            cwd = vim.fn.expand("%:p:h"),
            respect_gitignore = false,
            hidden = true,
            grouped = true,
            initial_mode = "normal",
          })
        end,
        desc = "File Browser (current dir)",
      },
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },

  -- telescope 本体のカスタマイズ
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { ";f", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { ";r", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
      { ";b", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { ";t", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
      { ";;", "<cmd>Telescope resume<cr>", desc = "Resume Telescope" },
      { ";e", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
      { ";s", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
    },
    opts = {
      defaults = {
        wrap_results = true,
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
