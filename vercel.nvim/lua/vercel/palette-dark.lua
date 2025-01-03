-- lua/vercel/palette-dark.lua

local palette = {
	-- Editor
	bg              = "#0a0a0a",  -- editor.background
	fg              = "#ededed",  -- editor.foreground
	border          = "#242424",  -- border
	line_number     = "#878787",  -- editor.line_number
	line_number_sel = "#ededed",  -- editor.active_line_number
  
	-- Syntax / Tokens
	comment  = "#a1a1a1",  -- syntax.comment
	keyword  = "#f75f8f",  -- syntax.keyword
	func     = "#c472fb",  -- syntax.function
	string   = "#62c073",  -- syntax.string
	number   = "#52a8ff",  -- syntax.number
	boolean  = "#52a8ff",  -- syntax.boolean
	operator = "#f75f8f",  -- syntax.operator
	type_    = "#c472fb",  -- syntax.type
	variable = "#ededed",  -- syntax.variable
  
	-- Diagnostics
	diag_error = "#f75f8f",
	diag_warn  = "#ff9907",
	diag_info  = "#52a8ff",
	diag_hint  = "#a1a1a1",
  }
  
  return palette
  