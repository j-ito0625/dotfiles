return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      -- VimTeX の設定は init で行う（opts ではなく vim.g で設定）
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        options = {
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
        },
      }
      -- 日本語 LaTeX (uplatex + dvipdfmx) を使う場合はこちらを有効化:
      -- vim.g.vimtex_compiler_latexmk_engines = { _ = "-pdfdvi" }

      -- quickfix を自動で開かない (邪魔な場合)
      vim.g.vimtex_quickfix_mode = 0

      -- concealment (数式記号の置換表示)
      vim.g.tex_conceal = "abdmg"
    end,
  },

  -- treesitter に latex パーサーを追加
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "latex", "bibtex" })
    end,
  },
}
