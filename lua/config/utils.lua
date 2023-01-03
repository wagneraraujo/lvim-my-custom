require("neoscroll").setup({
	-- All these keys will be mapped to their corresponding default scrolling animation
	mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
	hide_cursor = true, -- Hide cursor while scrolling
	stop_eof = true, -- Stop at <EOF> when scrolling downwards
	respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
	cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
	easing_function = nil, -- Default easing function
	pre_hook = nil, -- Function to run before the scrolling animation starts
	post_hook = nil, -- Function to run after the scrolling animation ends
	performance_mode = false, -- Disable "Performance Mode" on all buffers.
})

require("neoscroll").setup({
	-- All these keys will be mapped to their corresponding default scrolling animation
	mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
	hide_cursor = true, -- Hide cursor while scrolling
	stop_eof = true, -- Stop at <EOF> when scrolling downwards
	respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
	cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
	easing_function = nil, -- Default easing function
	pre_hook = nil, -- Function to run before the scrolling animation starts
	post_hook = nil, -- Function to run after the scrolling animation ends
	performance_mode = false, -- Disable "Performance Mode" on all buffers.
})

require("nvim-autopairs").setup({
	disable_filetype = { "TelescopePrompt" },
	map_cr = false,
	disable_in_macro = false,
	disable_in_visualblock = false,
})


require("marks").setup({
	mappings = {
		set_next = "m,",
		next = "m]",
		preview = "m;",
		set_bookmark0 = "m0",
		prev = false, -- pass false to disable only this default mapping
	},
})

local wilder = require("wilder")
wilder.setup({ modes = { ":", "/", "?" } })
wilder.set_option(
	"renderer",
	wilder.wildmenu_renderer({
		-- highlighter applies highlighting to the candidates
		highlighter = wilder.basic_highlighter(),
		pumblend = 20,
	})
)
wilder.set_option(
	"renderer",
	wilder.renderer_mux({
		[":"] = wilder.popupmenu_renderer({
			highlighter = wilder.basic_highlighter(),
		}),
		["/"] = wilder.wildmenu_renderer({
			highlighter = wilder.basic_highlighter(),
		}),
	})
)
wilder.set_option(
	"renderer",
	wilder.popupmenu_renderer(wilder.popupmenu_border_theme({
		highlights = {
			border = "Normal", -- highlight to use for the border
		},
		-- 'single', 'double', 'rounded' or 'solid'
		-- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
		border = "rounded",
	}))
)
