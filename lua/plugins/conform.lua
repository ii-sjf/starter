return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        prisma = { "prismafmt" }, -- 使用 prisma-fmt 格式化
      },
    },
  },
  {
    "mason-org/mason.nvim", -- 关键：仓库名从 williamboman 改为 mason-org
    opts = {
      ensure_installed = { "prisma-fmt" },
    },
  },
}
