local vim = vim

vim.api.nvim_exec(
	[[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.lua FormatWrite
augroup END
]],
	true
)

require("formatter").setup({
	filetype = {
		rust = {
			-- Rustfmt
			function()
				return {
					exe = "rustfmt",
					args = { "--emit=stdout", "--edition=2021" },
					stdin = true,
				}
			end,
		},
		json = {
			function()
				return {
					exe = "prettier",
					args = {
						"--stdin-filepath",
						vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
						"--double-quote",
					},
					stdin = true,
				}
			end,
		},
		sh = {
			-- Shell Script Formatter
			function()
				return {
					exe = "shfmt",
					args = { "-i", 2 },
					stdin = true,
				}
			end,
		},
		lua = {
			function()
				return {
					exe = "stylua",
					args = {
						-- use default settings
						--"--config-path "
						--  .. os.getenv("XDG_CONFIG_HOME")
						--  .. "/stylua/stylua.toml",
						"-",
					},
					stdin = true,
				}
			end,
		},
		cpp = {
			-- clang-format
			function()
				return {
					exe = "clang-format",
					args = { "--assume-filename", vim.api.nvim_buf_get_name(0) },
					stdin = true,
					cwd = vim.fn.expand("%:p:h"), -- Run clang-format in cwd of the file.
				}
			end,
		},
		go = {
			function()
				return {
					exe = "gofmt",
					stdin = true,
				}
			end,
		},
		python = {
			function()
				return {
					exe = "python3 -m autopep8",
					args = {
						"--in-place --aggressive --aggressive",
						vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
					},
					stdin = false,
				}
			end,
		},
	},
})
