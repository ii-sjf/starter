return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    config = function()
      local dap = require("dap")

      -- 使用 Mason 自动管理的 js-debug-adapter 路径
      -- Mason v2 默认安装位置：stdpath("data") .. "/mason/packages/js-debug-adapter/"
      dap.adapters["pwa-node"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "node",
          args = {
            vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
            "${port}",
          },
        },
      }

      -- 为 TypeScript / JavaScript 添加 NestJS Attach 配置
      for _, ft in ipairs({ "typescript", "javascript" }) do
        dap.configurations[ft] = dap.configurations[ft] or {}
        table.insert(dap.configurations[ft], {
          type = "pwa-node",
          request = "attach",
          name = "Attach NestJS (9229)",
          cwd = "${workspaceFolder}",
          port = 9229,
        })
      end
    end,
  },
}
