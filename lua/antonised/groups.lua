local colors = require("antonised.colors")

-- stylua: ignore start
return {
  ["Normal"] =      { fg = colors.text, bg = colors.surface },
  ["Bold"] =        { bold = true },
  ["Visual"] =      { bg = colors.grey6 },
  ["NonText"] =     { fg = colors.grey3 },

  ["LineNr"] =       { fg = colors.gutter },
  ["LineNrAbove"] =  { link = "LineNr" },
  ["LineNrBelow"] =  { link = "LineNr" },
  ["EndOfBuffer"] =  { link = "LineNr" },
  ["ColorColumn"] =  { bg = colors.grey5, cterm = { reverse = true } },
  ["CursorColumn"] = { bg = colors.grey5 },
  ["CursorLine"] =   { bg = colors.grey5 },

  ["Search"] =      { fg = colors.black, bg = colors.yellow },
  ["IncSearch"] =   { link = "Search" },
  ["Substitute"] =  { link = "Search" },
  ["CurSearch"] =   { link = "Search" },

  ["Directory"] =   { fg = colors.text },
  ["Title"] =       { fg = colors.text, bold = true },

  ["MsgArea"] =     { fg = colors.grey2 },
  ["MoreMsg"] =     { fg = colors.grey2 },
  ["ModeMsg"] =     { fg = colors.grey2 },
  ["ErrorMsg"] =    { fg = colors.error },
  ["WarningMsg"] =  { fg = colors.warning },

  ["MatchParen"] =  { fg = colors.orange, bold = true },
  ["SpellBad"] =    { sp = colors.error, undercurl = true },
  ["SpellCap"] =    { sp = colors.warning, undercurl = true },
  ["SpellLocal"] =  { sp = colors.ok, undercurl = true },
  ["SpellRare"] =   { sp = colors.hint, undercurl = true },

  ["WinSeparator"] = { fg = colors.surface, bg = colors.surface },
  ["StatusLine"] =   { fg = colors.text, bg = colors.surface },
  ["StatusLineNC"] = { fg = colors.grey2, bg = colors.surface },

  ["Pmenu"] =        { bg = colors.popup_surface},
  ["PmenuKind"] =    { link = "Pmenu" },
  ["PmenuExtra"] =   { link = "Pmenu" },
  ["PmenuSel"] =     { bg = colors.grey6 },

  ["Added"] =   { fg = colors.green },
  ["Changed"] = { fg = colors.cyan },
  ["Removed"] = { fg = colors.red },

  -- Floats
  ["NormalFloat"] = { link = "Normal" },
  ["FloatTitle"] =  { link = "Title" },
  ["FloatBorder"] = { link = "FloatTitle" },

  -- Text
  ["Comment"] =     { fg = colors.grey2 },
  ["Todo"] =        { fg = colors.darkgreen1 },

  ["Constant"] =    { link = "Identifier" },
  ["String"] =      { fg = colors.yellow },
  ["Character"] =   { link = "String" },
  ["Number"] =      { fg = colors.orange },
  ["Boolean"] =     { fg = colors.orange },
  ["Float"] =       { link = "Number" },

  ["Identifier"] =  { fg = colors.text },
  ["Function"] =    { fg = colors.green },

  ["Statement"] =   { fg = colors.lightpurple },
  ["Keyword"] =     { link = "Statement" },
  ["Conditional"] = { link = "Statement" },
  ["Repeat"] =      { link = "Statement" },
  ["Exception"] =   { link = "Statement" },
  ["Label"]  =      { link = "Statement" },
  ["Operator"] =    { fg = colors.lightblue },

  ["PreProc"] =     { fg = colors.red },
  ["Include"] =     { link = "PreProc" },
  ["Define"] =      { link = "PreProc" },
  ["Macro"] =       { link = "PreProc" },
  ["PreCondit"] =   { link = "PreProc" },

  ["Type"] =        { fg = colors.blue },
  ["StorageClass"] = { fg = colors.blue },
  ["Structure"] =   { fg = colors.blue },
  ["Typedef"] =     { fg = colors.blue },

  ["Special"] =     { fg = colors.orange },
  ["SpecialChar"] = { link = "Special" },
  ["Tag"] =         { link = "Special" },
  ["Delimiter"] =   { link = "Normal" },
  ["SpecialComment"] = { link = "Special" },
  ["Debug"] =       { link = "Special" },

  -- Treesitter (treesitter-highlight)
  ["@comment"] =         { link = "Comment" },
  ["@comment.error"] =   { fg = colors.darkred1 },
  ["@comment.warning"] = { fg = colors.darkorange1 },
  ["@comment.todo"] =    { link = "Todo" },
  ["@comment.note"] =    { link = "@comment" },

  ["@variable"] =         { link = "Identifier" },
  ["@variable.builtin"] = { fg = colors.green },

  ["@string"] =           { link = "String" },
  ["@string.escape"] =    { link = "Special" },
  ["@string.special"] =   { link = "Special" },
  ["@string.regexp"] =    { fg = colors.green },
  ["@character"] =        { link = "Character" },
  ["@character.special"] = { link = "Special" },

  ["@boolean"] =          { link = "Boolean" },
  ["@number"] =           { link = "Number" },

  ["@type"] =             { link = "Type" },
  ["@type.builtin"] =     { link = "@type" },
  ["@type.definition"] =  { link = "@type" },

  ["@constant"] =         { link = "Constant" },
  ["@constant.builtin"] = { link = "@constant" },
  ["@constant.macro"] =   { link = "PreProc" },

  ["@module"] =           { fg = colors.blue },
  ["@module.builtin"] =   { link = "@module" },
  ["@label"] =            { link = "Label" },

  ["@keyword"] =           { link = "Keyword" },
  ["@keyword.import"] =    { link = "PreProc" },
  ["@keyword.directive"] = { link = "PreProc" },
  ["@keyword.modifier"] =  { link = "@type" },
  ["@keyword.conditional.ternary"] = { link = "@operator" },

  ["@punctuation.delimiter"] = { fg = colors.text },
  ["@punctuation.bracket"] =   { link = "@punctuation.delimiter" },
  ["@punctuation.special"] =   { fg = colors.purple },

  ["@function"] =             { link = "Function" },
  ["@function.builtin"] =     { link = "@function" },
  ["@function.macro"] =       { link = "PreProc" },
  ["@function.method"] =      { link = "@function" },
  ["@function.method.call"] = { link = "@function.call" },
  ["@constructor"] =          { link = "@function" },
  ["@operator"] =             { link = "Operator" },

  ["@markup.math"] = { fg = colors.green },

  -- Nvim Diagnostic Framework (diagnostic-highlights)
  ["DiagnosticOk"] =             { fg = colors.ok},
  ["DiagnosticUnderlineOk"] =    { sp = colors.ok, undercurl = true },
  ["DiagnosticHint"] =           { fg = colors.hint},
  ["DiagnosticUnderlineHint"] =  { sp = colors.hint, undercurl = true },
  ["DiagnosticInfo"] =           { fg = colors.info},
  ["DiagnosticUnderlineInfo"] =  { sp = colors.info, undercurl = true },
  ["DiagnosticWarn"] =           { fg = colors.warning },
  ["DiagnosticUnderlineWarn"] =  { sp = colors.warning, undercurl = true },
  ["DiagnosticError"] =          { fg = colors.error },
  ["DiagnosticUnderlineError"] = { sp = colors.error, undercurl = true },
  ["DiagnosticUnnecessary"] =    { fg = colors.grey2 },
  -- ["DiagnosticDeprecated"] = {},

  -- LSP Semantic Tokens (lsp-semantic-highlight)
  ["@lsp.type.comment"] = { link = "@comment" },
  ["@lsp.type.keyword"] = { link = "@keyword" },
  ["@lsp.type.regexp"] =  { link = "@string.regexp" },
  ["@lsp.type.unresolvedReference"] = { sp = colors.warning, undercurl = true },

  -- PLUGINS

  -- Lazy
  ["LazyButton"] =       { bg = colors.grey7 },
  ["LazyButtonActive"] = { bg = colors.grey5, bold = true },
  ["LazyH1"] =           { link = "LazyButtonActive"},
  ["LazyH2"] =           { link = "Bold" },
  ["LazyReasonStart"] =  { fg = colors.blue },
  ["LazyReasonImport"] = { fg = colors.purple },
  ["LazyReasonRequire"] = { fg = colors.purple },
  ["LazyReasonSource"] = { fg = colors.yellow },
  ["LazyReasonFt"] =     { fg = colors.yellow },
  ["LazyReasonEvent"] =  { fg = colors.green },

  -- Telescope
  ["TelescopeNormal"] = { bg = colors.float_surface },
  ["TelescopeTitle"] =  { link = "FloatTitle" },
  ["TelescopeBorder"] = { fg = colors.surface, bg = colors.float_surface},
  ["TelescopePreviewExecute"] = { fg = colors.yellow },
  ["TelescopePreviewDirectory"] = { fg = colors.blue },

  ["TelescopeResultsDiffChange"] =    { fg = colors.white },
  ["TelescopeResultsDiffAdd"] =       { fg = colors.green },
  ["TelescopeResultsDiffDelete"] =    { fg = colors.red },
  ["TelescopeResultsDiffUntracked"] = { fg = colors.grey2 },

  -- Indent Blankline (ibl.highlights)
  ["IblIndent"] = { fg = colors.grey6, nocombine = true },
  ["IblScope"]  = { fg = colors.grey4, nocombine = true },
}
-- stylua: ignore end
