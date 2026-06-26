return {
  -- octo.nvim: GitHub PR/Issue をnvim内で操作
  {
    "pwntester/octo.nvim",
    cmd = "Octo",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      enable_builtin = true,
      default_merge_method = "squash",
      ssh_aliases = {},
    },
    keys = {
      { "<leader>gi", "<cmd>Octo issue list<cr>", desc = "List Issues (Octo)" },
      { "<leader>gI", "<cmd>Octo issue create<cr>", desc = "Create Issue (Octo)" },
      { "<leader>gp", "<cmd>Octo pr list<cr>", desc = "List PRs (Octo)" },
      { "<leader>gP", "<cmd>Octo pr create<cr>", desc = "Create PR (Octo)" },
      { "<leader>gr", "<cmd>Octo review start<cr>", desc = "Start Review (Octo)" },
    },
  },

  -- diffview.nvim: Git diff/log をタブ表示
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open" },
      { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File History (current)" },
      { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "File History (repo)" },
    },
    opts = {
      enhanced_diff_hl = true,
      view = {
        default = { layout = "diff2_horizontal" },
      },
    },
  },

  -- gitlinker.nvim: カーソル位置のGitHub URLをコピー/ブラウザで開く
  {
    "ruifm/gitlinker.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>gy", desc = "Copy GitHub URL" },
      { "<leader>gY", function()
        require("gitlinker").get_buf_range_url("n", { action_callback = require("gitlinker.actions").open_in_browser })
      end, desc = "Open in GitHub" },
    },
    opts = {},
  },
}
