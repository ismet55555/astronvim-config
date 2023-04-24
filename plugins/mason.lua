------------------------------------------------------------------------------
-- MASON
--   - https://github.com/williamboman/mason.nvim
------------------------------------------------------------------------------
return {
  {
    "williamboman/mason.nvim",
    opts = {
      PATH = "append"
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
       "ansiblels",
       "bashls",
       "docker_compose_language_service",
       "dockerls",
       "gopls",
       "jsonls",
       "pyright",
       "rust_analyzer",
       "sqlls",
       "terraformls",
       "yamlls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
       "shellharden",
       "markdownlint",
       "tflint",
       "ansible-lint",
       "codespell",
       "jsonlint",
       "mypy",
       "pydocstyle",
       "pylint",
       "shellcheck",
       "yamllint",
       "black",
       "beautysh",
       "isort",
       "rustfmt",
       "shfmt",
       "yapf",
       "yamlfmt",
      },
      handlers = {
        taplo = function() end, -- disable taplo in null-ls, it's taken care of by lspconfig
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "bash",
        "python",
      },
    },
  },
}
