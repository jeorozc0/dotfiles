-- lua/vercel/dark.lua
-- This file actually sets all the highlight groups for “Vercel Dark”
-- by pulling in the palette from palette-dark.lua.

local M = {}

function M.setup()
  local palette = require("vercel.palette-dark")

  -- Helper to reduce repetition
  local set_hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -------------------------------------------------------------------------
  -- Editor UI
  -------------------------------------------------------------------------
  set_hl("Normal",       { fg = palette.fg, bg = palette.bg })
  set_hl("LineNr",       { fg = palette.line_number })
  set_hl("CursorLineNr", { fg = palette.line_number_sel, bold = true })
  set_hl("VertSplit",    { fg = palette.border })
  set_hl("StatusLine",   { fg = palette.fg, bg = palette.bg })
  set_hl("StatusLineNC", { fg = palette.comment, bg = palette.bg })
  set_hl("SignColumn",   { bg = palette.bg })

  -- Instead of "#ffffff1a", we do #ffffff with partial blend
  set_hl("CursorLine",   { bg = "#ffffff", blend = 10 })
  set_hl("ColorColumn",  { bg = "#ffffff", blend = 10 })

  -------------------------------------------------------------------------
  -- Syntax
  -------------------------------------------------------------------------
  set_hl("Comment",  { fg = palette.comment, italic = true })
  set_hl("Keyword",  { fg = palette.keyword })
  set_hl("Function", { fg = palette.func })
  set_hl("String",   { fg = palette.string })
  set_hl("Boolean",  { fg = palette.boolean })
  set_hl("Number",   { fg = palette.number })
  set_hl("Operator", { fg = palette.operator })
  set_hl("Type",     { fg = palette.type_ })
  set_hl("Variable", { fg = palette.variable })
  -- Link some standard groups
  vim.api.nvim_set_hl(0, "Identifier", { link = "Variable" })
  vim.api.nvim_set_hl(0, "Constant",   { link = "Number"  })

  -------------------------------------------------------------------------
  -- Diagnostics (LSP, etc.)
  -------------------------------------------------------------------------
  set_hl("DiagnosticError", { fg = palette.diag_error })
  set_hl("DiagnosticWarn",  { fg = palette.diag_warn  })
  set_hl("DiagnosticInfo",  { fg = palette.diag_info  })
  set_hl("DiagnosticHint",  { fg = palette.diag_hint  })

  -- Optional: underlines for diagnostics
  set_hl("DiagnosticUnderlineError", { sp = palette.diag_error, undercurl = true })
  set_hl("DiagnosticUnderlineWarn",  { sp = palette.diag_warn,  undercurl = true })
  set_hl("DiagnosticUnderlineInfo",  { sp = palette.diag_info,  undercurl = true })
  set_hl("DiagnosticUnderlineHint",  { sp = palette.diag_hint,  undercurl = true })
end

return M
