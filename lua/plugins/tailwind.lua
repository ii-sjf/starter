return {
  -- 启用 Tailwind Extra，获得 LSP 补全能力
  { import = "lazyvim.plugins.extras.lang.tailwind" },
  -- 禁用只为 nvim-cmp 设计的 colorizer 插件
  { "roobert/tailwindcss-colorizer-cmp.nvim", enabled = false },
}
