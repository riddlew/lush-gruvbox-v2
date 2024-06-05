local lush = require('lush')
local hsl = lush.hsl
-- local colors = require('lush_theme.colors')

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local M = lush(function(injected_functions)
  local sym = injected_functions.sym

  local colors = {
    -- dark0_hard     = hsl("#1d2021"),
    dark0_hard     = hsl("#262626"),
    dark0          = hsl("#303030"),
    dark0_soft     = hsl("#32302f"),
    dark1          = hsl("#3c3836"),
    dark2          = hsl("#504945"),
    dark3          = hsl("#665c54"),
    dark4          = hsl("#7c6f64"),
    light0_hard    = hsl("#f9f5d7"),
    light0         = hsl("#fbf1c7"),
    light0_soft    = hsl("#f2e5bc"),
    light1         = hsl("#ebdbb2"),
    light2         = hsl("#d5c4a1"),
    light3         = hsl("#bdae93"),
    light4         = hsl("#a89984"),
    bright_red     = hsl("#fb4934"),
    bright_green   = hsl("#b8bb26"),
    bright_yellow  = hsl("#fabd2f"),
    bright_blue    = hsl("#83a598"),
    bright_purple  = hsl("#d3869b"),
    bright_aqua    = hsl("#8ec07c"),
    bright_orange  = hsl("#fe8019"),
    neutral_red    = hsl("#cc241d"),
    neutral_green  = hsl("#98971a"),
    neutral_yellow = hsl("#d79921"),
    neutral_blue   = hsl("#458588"),
    neutral_purple = hsl("#b16286"),
    neutral_aqua   = hsl("#689d6a"),
    neutral_orange = hsl("#d65d0e"),
    faded_red      = hsl("#9d0006"),
    faded_green    = hsl("#79740e"),
    faded_yellow   = hsl("#b57614"),
    faded_blue     = hsl("#076678"),
    faded_purple   = hsl("#8f3f71"),
    faded_aqua     = hsl("#427b58"),
    faded_orange   = hsl("#af3a03"),
    gray           = hsl("#928374"),
    shaded_red     = hsl(6, 66, 16),
    shaded_green   = hsl(90, 66, 16),
    shaded_yellow  = hsl(58, 66, 16),
    shaded_blue    = hsl(200, 66, 16),
    shaded_purple  = hsl(310, 66, 16),
    shaded_aqua    = hsl(176, 66, 16),
    shaded_orange  = hsl(34, 66, 16),




    -- bg = hsl(180, 0, 13),
    -- fg = hsl(43, 43, 85),
    -- red = hsl(6, 80, 59),
    -- green = hsl(64, 66, 50),
    -- yellow = hsl(39, 100, 71),
    -- blue = hsl(221, 100, 75),
    -- purple = hsl(276, 68, 75),
    -- cyan = hsl(197, 100, 77),
    --
    -- debug = hsl("#ff00ff"),
    --
    -- darkgreen = hsl(84, 40, 14),
    -- darkblue = hsl(213, 89, 26),
    -- darkred = hsl(357, 40, 16),
    --
    -- columns = hsl(0, 0, 20),
    -- nontext = hsl(0, 0, 30),
    -- borders = hsl(0, 0, 40),
    -- comment = hsl(0, 0, 54),
    -- selected_tab = hsl(225, 12, 32),
    -- lightgrey = hsl(210, 17, 40),
    -- lightgrey2 = hsl(210, 17, 72),
    --
    -- barbar_inactive_sign = hsl('#4d4d4d'),
  }

  local theme = {
    dark = {
      bg0 = colors.dark0_hard,
      bg00 = colors.dark0,
      bg1 = colors.dark1,
      bg2 = colors.dark2,
      bg3 = colors.dark3,
      bg4 = colors.dark4,
      fg0 = colors.light0,
      fg1 = colors.light1,
      fg2 = colors.light2,
      fg3 = colors.light3,
      fg4 = colors.light4,
      red = colors.bright_red,
      green = colors.bright_green,
      yellow = colors.bright_yellow,
      blue = colors.bright_blue,
      purple = colors.bright_purple,
      aqua = colors.bright_aqua,
      orange = colors.bright_orange,
      shaded_red = colors.shaded_red,
      shaded_green = colors.shaded_green,
      shaded_yellow = colors.shaded_yellow,
      shaded_blue = colors.shaded_blue,
      shaded_purple = colors.shaded_purple,
      shaded_aqua = colors.shaded_aqua,
      shaded_orange = colors.shaded_orange,
      neutral_red = colors.neutral_red,
      neutral_green = colors.neutral_green,
      neutral_yellow = colors.neutral_yellow,
      neutral_blue = colors.neutral_blue,
      neutral_purple = colors.neutral_purple,
      neutral_aqua = colors.neutral_aqua,
      gray = colors.gray,
      black = "#000000",
    },
    light = {
      bg0 = colors.light0,
      bg1 = colors.light1,
      bg2 = colors.light2,
      bg3 = colors.light3,
      bg4 = colors.light4,
      fg0 = colors.dark0_hard,
      fg1 = colors.dark1,
      fg2 = colors.dark2,
      fg3 = colors.dark3,
      fg4 = colors.dark4,
      red = colors.faded_red,
      green = colors.faded_green,
      yellow = colors.faded_yellow,
      blue = colors.faded_blue,
      purple = colors.faded_purple,
      aqua = colors.faded_aqua,
      orange = colors.faded_orange,
      neutral_red = colors.neutral_red,
      neutral_green = colors.neutral_green,
      neutral_yellow = colors.neutral_yellow,
      neutral_blue = colors.neutral_blue,
      neutral_purple = colors.neutral_purple,
      neutral_aqua = colors.neutral_aqua,
      gray = colors.gray,
    }
  }

  -- neovim terminal mode colors
  local function set_terminal_colors(colors)
    vim.g.terminal_color_0 = colors.bg0
    vim.g.terminal_color_8 = colors.gray
    vim.g.terminal_color_1 = colors.neutral_red
    vim.g.terminal_color_9 = colors.red
    vim.g.terminal_color_2 = colors.neutral_green
    vim.g.terminal_color_10 = colors.green
    vim.g.terminal_color_3 = colors.neutral_yellow
    vim.g.terminal_color_11 = colors.yellow
    vim.g.terminal_color_4 = colors.neutral_blue
    vim.g.terminal_color_12 = colors.blue
    vim.g.terminal_color_5 = colors.neutral_purple
    vim.g.terminal_color_13 = colors.purple
    vim.g.terminal_color_6 = colors.neutral_aqua
    vim.g.terminal_color_14 = colors.aqua
    vim.g.terminal_color_7 = colors.fg4
    vim.g.terminal_color_15 = colors.fg1
  end


  -- vim.g.terminal_color_0          = colors.borders
  -- vim.g.terminal_color_1          = colors.red
  -- vim.g.terminal_color_2          = colors.green
  -- vim.g.terminal_color_3          = colors.yellow
  -- vim.g.terminal_color_4          = colors.blue
  -- vim.g.terminal_color_5          = colors.purple
  -- vim.g.terminal_color_6          = colors.cyan
  -- vim.g.terminal_color_7          = colors.lightgrey2
  -- vim.g.terminal_color_8          = colors.borders
  -- vim.g.terminal_color_9          = colors.red
  -- vim.g.terminal_color_10         = colors.green
  -- vim.g.terminal_color_11         = colors.yellow
  -- vim.g.terminal_color_12         = colors.blue
  -- vim.g.terminal_color_13         = colors.purple
  -- vim.g.terminal_color_14         = colors.cyan
  -- vim.g.terminal_color_15         = colors.fg
  -- vim.g.terminal_color_background = colors.bg
  -- vim.g.terminal_color_foreground = colors.fg

  return {
    -- -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- -- groups, mostly used for styling UI elements.
    -- -- Comment them out and add your own properties to override the defaults.
    -- -- An empty definition `{}` will clear all styling, leaving elements looking
    -- -- like the 'Normal' group.
    -- -- To be able to link to a group, it must already be defined, so you may have
    -- -- to reorder items as you go.
    -- --
    -- -- See :h highlight-groups
    -- --
    -- ColorColumn  { bg = colors.columns }, -- Columns set with 'colorcolumn'
    -- Conceal      { fg = colors.nontext }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { bg = colors.fg, fg = colors.bg }, -- Character under the cursor
    -- -- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- iCursor      { bg = colors.yellow, fg = colors.bg },
    -- vCursor      { bg = colors.blue, fg = colors.bg },
    -- rCursor      { bg = colors.red, fg = colors.bg },
    -- -- CursorColumn { bg = colors.columns }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- -- CursorLine   { bg = colors.columns }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    -- CursorColumn { bg = colors.bg }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine   { bg = colors.bg }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory    { fg = colors.blue }, -- Directory names (and other special names in listings)
    --
    -- DiffAdd      { bg = colors.darkgreen, fg = colors.green }, -- Diff mode: Added line |diff.txt|
    -- DiffChange   { bg = colors.darkblue, fg = colors.blue }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete   { bg = colors.darkred, fg = colors.red }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText     { bg = colors.cyan, fg = colors.bg }, -- Diff mode: Changed text within a changed line |diff.txt|
    --
    -- diffAdded   { DiffAdd },
    -- diffRemoved { DiffDelete },
    -- diffChanged { DiffChange },
    -- diffText { DiffText },
    -- diffLine { bg = colors.yellow, fg = colors.bg  },
    -- diffSubname { bg = colors.yellow, fg = colors.bg  },
    --
    -- EndOfBuffer  { fg = colors.borders }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- -- TermCursor   { }, -- Cursor in a focused terminal
    -- -- TermCursorNC { }, -- Cursor in an unfocused terminal
    -- ErrorMsg     { fg = colors.red }, -- Error messages on the command line
    -- VertSplit    { fg = colors.borders }, -- Column separating vertically split windows
    -- WinSeparator { VertSplit },
    -- FloatBorder { fg = colors.fg, bg = colors.bg },
    -- Folded       { bg = colors.nontext, fg = colors.fg }, -- Line used for closed folds
    -- FoldColumn   { fg = colors.fg }, -- 'foldcolumn'
    -- SignColumn   { fg = colors.fg }, -- Column where |signs| are displayed
    -- IncSearch    { bg = colors.cyan, fg = colors.bg, gui = "bold" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- -- Substitute   { }, -- |:substitute| replacement text highlighting
    -- LineNr       { fg = colors.borders }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- CursorLineNr { fg = colors.fg, gui = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- MatchParen   { bg = colors.borders, fg = colors.fg }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- -- MsgArea      { }, -- Area for messages and cmdline
    -- -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { fg = colors.blue }, -- |more-prompt|
    -- NonText      { fg = colors.nontext }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- Normal       { bg = colors.bg, fg = colors.fg }, -- Normal text
    -- -- NormalFloat  { }, -- Normal text in floating windows.
    -- -- NormalNC     { }, -- normal text in non-current windows
    -- Pmenu        { bg = colors.nontext }, -- Popup menu: Normal item.
    -- PmenuSel     { bg = colors.lightgrey2, fg = colors.bg }, -- Popup menu: Selected item.
    -- PmenuSbar    { bg = colors.nontext }, -- Popup menu: Scrollbar.
    -- PmenuThumb   { bg = colors.lightgrey2 }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { fg = colors.green }, -- |hit-enter| prompt and yes/no questions
    -- -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search       { bg = colors.blue, fg = colors.bg,  gui = "bold" }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey   { fg = colors.nontext }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { fg = colors.red, gui = "underline" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { fg = colors.blue, gui = "underline" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { fg = colors.purple, gui = "underline" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { fg = colors.cyan, gui = "underline" }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    --
    -- StatusLine   { bg = colors.columns, fg = colors.fg }, -- Status line of current window
    -- StatusLineNC { bg = colors.bg, fg = colors.fg }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- StatusLineNameError { bg = colors.columns, fg = colors.red },
    -- StatusLineNameWarning { bg = colors.columns, fg = colors.yellow },
    -- StatusLine2 { bg = colors.columns, fg = colors.fg },
    --
    -- StatusLineModeNormal   { bg = colors.columns, fg = colors.fg },
    -- StatusLineModePending  { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeInsert   { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeVisual   { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeVLine    { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeVBlock   { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeSelect   { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeSLine    { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeSBlock   { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeReplace  { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeVReplace { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeCommand  { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeEx       { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeShell    { bg = colors.columns, fg = colors.fg },
    -- StatusLineModeTerminal { bg = colors.columns, fg = colors.fg },
    --
    -- StatusLineGitAdd    { bg = colors.columns, fg = colors.green },
    -- StatusLineGitChange { bg = colors.columns, fg = colors.blue },
    -- StatusLineGitDelete { bg = colors.columns, fg = colors.red },
    --
    -- StatusLineError     { fg = colors.bg, bg = colors.red },
    -- StatusLineWarn      { fg = colors.bg, bg = colors.yellow },
    -- StatusLineInfo      { fg = colors.bg, bg = colors.blue },
    -- StatusLineHint      { fg = colors.bg, bg = colors.cyan },
    --
    -- WinBar              { fg = colors.fg, gui = "bold" },
    -- WinBarNC            { fg = colors.comment, gui = "bold" },
    -- WinBarLocation      { fg = colors.comment },
    -- WinBarNameError     { fg = colors.red, gui = "bold" },
    -- WinBarNameWarning   { fg = colors.yellow, gui = "bold" },
    --
    -- TabLine      { bg = colors.bg, fg = colors.fg }, -- Tab pages line, not active tab page label
    -- TabLineFill  { bg = colors.bg, fg = colors.fg }, -- Tab pages line, where there are no labels
    -- TabLineSel   { bg = colors.selected_tab, fg = colors.fg }, -- Tab pages line, active tab page label
    --
    -- Title        { fg = colors.fg }, -- Titles for output from ":set all", ":autocmd" etc.
    -- Visual       { bg = colors.borders, fg = colors.fg }, -- Visual mode selection
    -- -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg   { fg = colors.red }, -- Warning messages
    -- -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu     { bg = colors.nontext, fg = colors.fg }, -- Current match in 'wildmenu' completion
    --
    -- -- Common vim syntax groups used for all kinds of code and markup.
    -- -- Commented-out groups should chain up to their preferred (*) group
    -- -- by default.
    -- --
    -- -- See :h group-name
    -- --
    -- -- Uncomment and edit if you want more specific syntax highlighting.
    --
    -- Comment        { fg = colors.comment }, -- Any comment
    --
    -- Constant       { fg = colors.red }, -- (*) Any constant
    -- String         { fg = colors.green }, --   A string constant: "this is a string"
    -- Character      { fg = colors.red }, --   A character constant: 'c', '\n'
    -- Number         { fg = colors.blue }, --   A number constant: 234, 0xff
    -- Boolean        { fg = colors.red }, --   A boolean constant: TRUE, false
    -- Float          { fg = colors.blue }, --   A floating point constant: 2.3e10
    --
    -- Identifier     { fg = colors.purple }, -- (*) Any variable name
    -- Function       { fg = colors.yellow }, --   Function name (also: methods for classes)
    --
    -- Statement      { fg = colors.blue }, -- (*) Any statement
    -- Conditional    { fg = colors.blue }, --   if, then, else, endif, switch, etc.
    -- Repeat         { fg = colors.blue }, --   for, do, while, etc.
    -- Label          { fg = colors.blue }, --   case, default, etc.
    -- Operator       { fg = colors.blue }, --   "sizeof", "+", "*", etc.
    -- Keyword        { fg = colors.blue }, --   any other keyword
    -- Exception      { fg = colors.blue }, --   try, catch, throw
    --
    -- PreProc        { fg = colors.cyan }, -- (*) Generic Preprocessor
    -- Include        { fg = colors.cyan }, --   Preprocessor #include
    -- Define         { fg = colors.cyan }, --   Preprocessor #define
    -- Macro          { fg = colors.cyan }, --   Same as Define
    -- PreCondit      { fg = colors.cyan }, --   Preprocessor #if, #else, #endif, etc.
    --
    -- Type           { fg = colors.yellow }, -- (*) int, long, char, etc.
    -- StorageClass   { fg = colors.yellow }, --   static, register, volatile, etc.
    -- Structure      { fg = colors.blue }, --   struct, union, enum, etc.
    -- Typedef        { fg = colors.yellow }, --   A typedef
    --
    -- Special        { fg = colors.blue }, -- (*) Any special symbol
    -- SpecialChar    { fg = colors.red }, --   Special character in a constant
    -- Tag            { fg = colors.cyan }, --   You can use CTRL-] on this
    -- Delimiter      { fg = colors.fg }, --   Character that needs attention
    -- SpecialComment { fg = colors.green }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { fg = colors.debug }, --   Debugging statements
    --
    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { fg = colors.debug }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { fg = colors.red }, -- Any erroneous construct
    -- Todo           { fg = colors.fg, gui = "bold" }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    --
    -- -- These groups are for the native LSP client and diagnostic system. Some
    -- -- other LSP clients may use these groups, or use their own. Consult your
    -- -- LSP client's documentation.
    --
    -- -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    -- --
    -- -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
    --
    -- -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    -- -- LSP
    -- DiagnosticError            { fg = colors.red } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { fg = colors.yellow } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { fg = colors.blue } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { fg = colors.cyan } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { fg = colors.red } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { fg = colors.yellow } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { fg = colors.blue } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { fg = colors.cyan } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { fg = colors.red, gui = "underline" } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { fg = colors.yellow, gui = "underline" } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { fg = colors.blue, gui = "underline" } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { fg = colors.cyan, gui = "underline" } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { fg = colors.red } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { fg = colors.yellow } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { fg = colors.blue } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { fg = colors.cyan } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { fg = colors.red } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { fg = colors.yellow } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { fg = colors.blue } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { fg = colors.cyan } , -- Used for "Hint" signs in sign column.
    --
    -- -- vim-sneak
    -- Sneak { Search },
    --
    -- -- nvim-telescope/telescope
    -- TelescopeTitle          { gui = "bold" },
    -- TelescopeSelection      { bg = colors.nontext, fg = colors.fg },
    -- TelescopeMatching       { fg = colors.yellow, gui = "bold" },
    -- TelescopeMultiSelection { fg = colors.purple, gui = "bold" },
    --
    -- -- folke/todo-comments
    -- CommentYellow { fg = colors.yellow, gui = "bold" },
    -- CommentRed    { fg = colors.red, gui = "bold" },
    -- CommentBlue   { fg = colors.blue, gui = "bold" },
    -- CommentCyan   { fg = colors.cyan, gui = "bold" },
    -- CommentPurple { fg = colors.purple, gui = "bold" },
    -- CommentGreen  { fg = colors.green, gui = "bold" },
    -- CommentWhite  { fg = colors.fg, gui = "bold" },
    --
    -- -- lukas-reineke/indent-blankline
    -- IndentBlanklineChar        { fg = colors.nontext },
    -- IndentBlanklineContextChar { fg = colors.lightgrey2, gui = "nocombine" },
    --
    -- -- hrsh7th/nvim-cmp
    -- CmpItemAbbrDeprecated { fg = colors.red },
    -- CmpItemAbbrMatch      { fg = colors.yellow, gui = "bold" },
    -- CmpItemAbbrMatchFuzzy { fg = colors.yellow, gui = "bold" },
    --
    -- -- lewis6991/gitsigns
    -- GitSignsAdd    { fg = colors.green },
    -- GitSignsDelete { fg = colors.red },
    -- GitSignsChange { fg = colors.blue },
    --
    -- -- airblade/vim-gitgutter
    -- GitGutterAdd    { fg = colors.green },
    -- GitGutterDelete { fg = colors.red },
    -- GitGutterChange { fg = colors.blue },
    --
    --
    -- -- markdown
    -- -- htmlH1 { fg = colors.bg, bg = colors.green },
    -- -- htmlH2 { fg = colors.bg, bg = colors.blue },
    -- -- htmlH3 { fg = colors.bg, bg = colors.yellow },
    -- -- htmlH4 { fg = colors.bg, bg = colors.purple },
    -- -- htmlH5 { fg = colors.bg, bg = colors.red },
    -- -- htmlH6 { fg = colors.bg, bg = colors.cyan },
    -- mkdHeading { fg = colors.borders },
    -- htmlLink { fg = colors.blue, gui = "underline" },
    -- mkdLink { fg = colors.blue, gui = "underline" },
    -- mkdURL { fg = colors.blue, gui = "underline" },
    -- htmlItalic { gui = "italic" },
    -- mkdItalic { gui = "italic" },
    -- htmlBold { gui = "bold" },
    -- mkdBold { gui = "bold" },
    -- htmlBoldItalic { gui = "bold,italic" },
    -- mkdBoldItalic { gui = "bold,italic" },
    -- htmlStrike { gui = "strikethrough" },
    -- mkdStrike { gui = "strikethrough" },
    -- mkdCodeDelimiter { fg = colors.borders },
    -- mkdCodeStart { fg = colors.borders },
    -- mkdCodeEnd { fg = colors.borders },
    -- mkdCode { fg = colors.yellow },
    --
    -- -- romgrk/barbar.nvim
    -- BufferCurrent { bg = colors.selected_tab },
    -- BufferCurrentIndex { bg = colors.selected_tab },
    -- BufferCurrentMod { bg = colors.selected_tab },
    -- BufferCurrentSign { bg = colors.selected_tab, fg = colors.barbar_inactive_sign },
    -- BufferCurrentTarget { bg = colors.selected_tab },
    --
    --
    -- -- Tree-Sitter syntax groups.
    -- --
    -- -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- -- submit a PR fix to lush-template!
    -- --
    -- -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- -- specially handled to be valid lua code, we do this via the special
    -- -- sym function. The following are all valid ways to call the sym function,
    -- -- for more details see https://www.lua.org/pil/5.html
    -- --
    -- -- sym("@text.literal")
    -- -- sym('@text.literal')
    -- -- sym"@text.literal"
    -- -- sym'@text.literal'
    -- --
    -- -- For more information see https://github.com/rktjmp/lush.nvim/issues/109
    --
    -- sym"@annotation"            { PreProc },
    -- sym"@attribute"             { PreProc },
    -- sym"@boolean"               { Boolean }, -- Boolean
    -- sym"@character"             { Character }, -- Character
    -- sym"@character.special"     { SpecialChar }, -- SpecialChar
    -- sym"@comment"               { Comment }, -- Comment
    -- sym"@conditional"           { Conditional }, -- Conditional
    -- sym"@constant"              { Constant }, -- Constant
    -- sym"@constant.builtin"      { Special }, -- Special
    -- -- sym"@constant.macro"        { Define },
    -- sym"@constant.macro"    { Macro }, -- Define
    -- sym"@constructor"           { Special }, -- Special
    -- sym"@debug"                 { Debug }, -- Debug
    -- sym"@define"                { Define }, -- Define
    -- sym"@exception"             { Exception }, -- Exception
    -- sym"@field"                 { Identifier }, -- Identifier
    -- sym"@float"                 { Float }, -- Float
    -- sym"@function"              { Function }, -- Function
    -- sym"@function.builtin"      { Special }, -- Special
    -- sym"@function.call"         { Function },
    -- sym"@function.macro"        { Macro }, -- Macro
    -- sym"@include"               { Include }, -- Include
    -- sym"@keyword"               { Keyword }, -- Keyword
    -- sym"@keyword.function"      { Keyword },
    -- sym"@keyword.operator"      { Operator },
    -- sym"@keyword.return"        { Keyword },
    -- sym"@label"                 { Label }, -- Label
    -- sym"@macro"                 { Macro }, -- Macro
    -- sym"@method"                { Function }, -- Function
    -- sym"@method.call"           { Function },
    -- -- sym"@namespace"             { Include },
    -- sym"@namespace"         { Identifier }, -- Identifier
    -- -- sym"@none"               { },
    -- sym"@number"                { Number }, -- Number
    -- sym"@operator"              { Operator }, -- Operator
    -- sym"@parameter"             { Identifier }, -- Identifier
    -- sym"@parameter.reference"   { Identifier },
    -- sym"@preproc"               { PreProc}, -- PreProc
    -- sym"@property"              { Delimiter }, -- Identifier
    -- sym"@punctuation"           { Delimiter }, -- Delimiter
    -- sym"@punctuation.bracket"   { Delimiter },
    -- sym"@punctuation.delimiter" { Delimiter },
    -- sym"@punctuation.special"   { Delimiter },
    -- sym"@repeat"                { Repeat }, -- Repeat
    -- sym"@storageclass"          { StorageClass }, -- StorageClass
    -- sym"@string"                { String }, -- String
    -- sym"@string.escape"         { SpecialChar }, -- SpecialChar
    -- sym"@string.regex"          { String },
    -- sym"@string.special"        { SpecialChar }, -- SpecialChar
    -- sym"@structure"             { Structure }, -- Structure
    -- sym"@symbol"                { Identifier },
    -- -- sym"@tag"                   { Label },
    -- sym"@tag"               { Tag }, -- Tag
    -- sym"@tag.attribute"         { Identifier },
    -- sym"@tag.delimiter"         { Delimiter },
    -- -- sym"@text"               { @none },
    -- sym"@text.danger"           { WarningMsg },
    -- sym"@text.emphasis"         { gui = "italic" },
    -- sym"@text.environment"      { Macro },
    -- sym"@text.environment.name" { Type },
    -- sym"@text.literal"          { String }, -- Comment
    -- sym"@text.math"             { Special },
    -- sym"@text.note"             { SpecialComment },
    -- sym"@text.reference"        { Constant }, -- Identifier
    -- sym"@text.strike"           { gui = "strikethrough" },
    -- sym"@text.strong"           { gui = "bold" },
    -- sym"@text.title"            { Title }, -- Title
    -- sym"@text.underline"        { Underlined }, -- Underlined
    -- -- sym"@text.uri"              { Underlined },
    -- sym"@text.uri"              { Underlined, fg = colors.blue }, -- Underlined
    -- sym"@text.warning"          { Todo },
    -- sym"@text.todo"             { Todo }, -- Todo
    -- sym"@type"                  { Type }, -- Type
    -- sym"@type.builtin"          { Type },
    -- sym"@type.definition"       { Typedef }, -- Typedef
    -- sym"@type.qualifier"        { Type },
    -- sym"@variable"              { Identifier }, -- Identifier
    -- sym"@variable.builtin"      { Special },











    -- Base groups
    GruvboxFg0             { fg = theme.dark.fg0 },
    GruvboxFg1             { fg = theme.dark.fg1 },
    GruvboxFg2             { fg = theme.dark.fg2 },
    GruvboxFg3             { fg = theme.dark.fg3 },
    GruvboxFg4             { fg = theme.dark.fg4 },
    GruvboxGray            { fg = theme.dark.gray },
    GruvboxBg0             { fg = theme.dark.bg0 },
    GruvboxBg1             { fg = theme.dark.bg1 },
    GruvboxBg2             { fg = theme.dark.bg2 },
    GruvboxBg3             { fg = theme.dark.bg3 },
    GruvboxBg4             { fg = theme.dark.bg4 },
    GruvboxRed             { fg = theme.dark.red },
    GruvboxRedBold         { fg = theme.dark.red, gui = "bold" },
    GruvboxGreen           { fg = theme.dark.green },
    GruvboxGreenBold       { fg = theme.dark.green, gui = "bold" },
    GruvboxYellow          { fg = theme.dark.yellow },
    GruvboxYellowBold      { fg = theme.dark.yellow, gui = "bold" },
    GruvboxBlue            { fg = theme.dark.blue },
    GruvboxBlueBold        { fg = theme.dark.blue, gui = "bold" },
    GruvboxPurple          { fg = theme.dark.purple },
    GruvboxPurpleBold      { fg = theme.dark.purple, gui = "bold" },
    GruvboxAqua            { fg = theme.dark.aqua },
    GruvboxAquaBold        { fg = theme.dark.aqua, gui = "bold" },
    GruvboxOrange          { fg = theme.dark.orange },
    GruvboxOrangeBold      { fg = theme.dark.orange, gui = "bold" },
    GruvboxRedSign         { fg = theme.dark.red, bg = theme.dark.bg0 },
    GruvboxGreenSign       { fg = theme.dark.green, bg = theme.dark.bg0 },
    GruvboxYellowSign      { fg = theme.dark.yellow, bg = theme.dark.bg0 },
    GruvboxBlueSign        { fg = theme.dark.blue, bg = theme.dark.bg0 },
    GruvboxPurpleSign      { fg = theme.dark.purple, bg = theme.dark.bg0 },
    GruvboxAquaSign        { fg = theme.dark.aqua, bg = theme.dark.bg0 },
    GruvboxOrangeSign      { fg = theme.dark.orange, bg = theme.dark.bg0 },
    GruvboxRedShaded       { fg = theme.dark.red, bg = theme.dark.shaded_red },
    GruvboxGreenShaded     { fg = theme.dark.green, bg = theme.dark.shaded_green },
    GruvboxYellowShaded    { fg = theme.dark.yellow, bg = theme.dark.shaded_yellow },
    GruvboxBlueShaded      { fg = theme.dark.blue, bg = theme.dark.shaded_blue },
    GruvboxPurpleShaded    { fg = theme.dark.purple, bg = theme.dark.shaded_purple },
    GruvboxAquaShaded      { fg = theme.dark.aqua, bg = theme.dark.shaded_aqua },
    GruvboxOrangeShaded    { fg = theme.dark.orange, bg = theme.dark.shaded_orange },
    GruvboxRedUnderline    { gui = "underline", guisp = theme.dark.red },
    GruvboxGreenUnderline  { gui = "underline", guisp = theme.dark.green },
    GruvboxYellowUnderline { gui = "underline", guisp = theme.dark.yellow },
    GruvboxBlueUnderline   { gui = "underline", guisp = theme.dark.blue },
    GruvboxPurpleUnderline { gui = "underline", guisp = theme.dark.purple },
    GruvboxAquaUnderline   { gui = "underline", guisp = theme.dark.aqua },
    GruvboxOrangeUnderline { gui = "underline", guisp = theme.dark.orange },
    Normal                 { fg = theme.dark.fg1, bg = theme.dark.bg0 },
    NormalFloat            { fg = theme.dark.fg1, bg = theme.dark.bg1 },
    NormalNC               { Normal },
    -- CursorLine             { bg = theme.dark.bg00 },
    CursorLine             { bg = theme.dark.bg0 },
    CursorColumn           { CursorLine },
    TabLineTabBg           { bg = theme.dark.green, gui = "bold" },
    TabLineTabFg           { fg = theme.dark.green, gui = "bold" },
    TabLineFill            { fg = theme.dark.fg1, bg = theme.dark.bg00 },
    TabLineSel             { fg = theme.dark.black, bg = theme.dark.green, gui = "bold" },
    TabLine                { TabLineFill },
    MatchParen             { bg = theme.dark.bg2, gui = "bold" },
    ColorColumn            { bg = theme.dark.bg00 },
    Conceal                { fg = theme.dark.blue },
    CursorLineNr           { fg = theme.dark.yellow, bg = theme.dark.bg00 },
    NonText                { GruvboxBg2 },
    SpecialKey             { GruvboxFg4 },
    Visual                 { bg = theme.dark.bg1 },
    VisualNOS              { Visual },
    Search                 { fg = theme.dark.yellow, bg = theme.dark.black, gui = "reverse" },
    IncSearch              { fg = theme.dark.orange, bg = theme.dark.black, gui = "reverse" },
    CurSearch              { IncSearch },
    QuickFixLine           { fg = theme.dark.black, bg = theme.dark.yellow, gui = "bold" },
    Underlined             { fg = theme.dark.blue, gui = "underline" },
    StatusLine             { fg = theme.dark.bg00, bg = theme.dark.fg1, gui = "reverse" },
    StatusLineNC           { fg = theme.dark.bg00, bg = theme.dark.fg4, gui = "reverse" },
    -- StatusLineNameError { bg = colors.columns, fg = colors.red },
    -- StatusLineNameWarning { bg = colors.columns, fg = colors.yellow },
    StatusLine2            { fg = theme.dark.fg0, bg = theme.dark.bg2 },
    StatusLineModeNormal   { gui = "bold", fg = theme.dark.black, bg = theme.dark.green },
    StatusLineModePending  { gui = "bold", fg = theme.dark.black, bg = theme.dark.orange },
    StatusLineModeInsert   { gui = "bold", fg = theme.dark.black, bg = theme.dark.blue },
    StatusLineModeVisual   { gui = "bold", fg = theme.dark.black, bg = theme.dark.purple },
    StatusLineModeVLine    { gui = "bold", fg = theme.dark.black, bg = theme.dark.purple },
    StatusLineModeVBlock   { gui = "bold", fg = theme.dark.black, bg = theme.dark.purple },
    StatusLineModeSelect   { gui = "bold", fg = theme.dark.black, bg = theme.dark.purple },
    StatusLineModeSLine    { gui = "bold", fg = theme.dark.black, bg = theme.dark.purple },
    StatusLineModeSBlock   { gui = "bold", fg = theme.dark.black, bg = theme.dark.purple },
    StatusLineModeReplace  { gui = "bold", fg = theme.dark.black, bg = theme.dark.red },
    StatusLineModeVReplace { gui = "bold", fg = theme.dark.black, bg = theme.dark.red },
    StatusLineModeCommand  { gui = "bold", fg = theme.dark.black, bg = theme.dark.yellow },
    StatusLineModeEx       { gui = "bold", fg = theme.dark.black, bg = theme.dark.yellow },
    StatusLineModeShell    { gui = "bold", fg = theme.dark.fg0, bg = theme.dark.bg00 },
    StatusLineModeTerminal { gui = "bold", fg = theme.dark.fg0, bg = theme.dark.bg00 },
    StatusLineGitAdd       { fg = theme.dark.green, bg = theme.dark.bg2 },
    StatusLineGitChange    { fg = theme.dark.yellow, bg = theme.dark.bg2 },
    StatusLineGitDelete    { fg = theme.dark.red, bg = theme.dark.bg2 },
    StatusLineError        { fg = theme.dark.black, bg = theme.dark.red },
    StatusLineWarn         { fg = theme.dark.black, bg = theme.dark.yellow },
    StatusLineInfo         { fg = theme.dark.black, bg = theme.dark.blue },
    StatusLineHint         { fg = theme.dark.bg00, bg = theme.dark.cyan },
    WinBar                 { fg = theme.dark.fg0 },
    WinBarNC               { fg = theme.dark.fg4 },
    WinSeparator           { fg = theme.dark.bg3, bg = theme.dark.bg0 },
    WinBarError            { gui = "bold", fg = theme.dark.bg00, bg = theme.dark.red },
    WinBarWarn             { gui = "bold", fg = theme.dark.bg00, bg = theme.dark.yellow },
    WinBarInfo             { gui = "bold", fg = theme.dark.bg00, bg = theme.dark.blue },
    WinBarHint             { gui = "bold", fg = theme.dark.bg00, bg = theme.dark.aqua },
    -- WinBarError            { fg = theme.dark.red, bg = theme.dark.shaded_red },
    -- WinBarWarn             { fg = theme.dark.yellow, bg = theme.dark.shaded_yellow },
    -- WinBarInfo             { fg = theme.dark.blue, bg = theme.dark.shaded_blue },
    -- WinBarHint             { fg = theme.dark.aqua, bg = theme.dark.shaded_aqua },
    WildMenu               { fg = theme.dark.blue, bg = theme.dark.bg1, gui = "bold" },
    Directory              { GruvboxBlueBold },
    Title                  { GruvboxGreenBold },
    ErrorMsg               { GruvboxRedShaded },
    MoreMsg                { GruvboxYellowBold },
    ModeMsg                { GruvboxYellowBold },
    Question               { GruvboxOrangeBold },
    WarningMsg             { GruvboxRedBold },
    LineNr                 { fg = theme.dark.bg4 },
    SignColumn             { bg = theme.dark.bg0 },
    Folded                 { fg = theme.dark.gray, bg = theme.dark.bg00 },
    FoldColumn             { fg = theme.dark.gray, bg = theme.dark.bg0 },
    Cursor                 { gui = "reverse" },
    vCursor                { Cursor },
    iCursor                { Cursor },
    lCursor                { Cursor },
    Special                { GruvboxOrange },
    Comment                { fg = theme.dark.gray },
    Todo                   { fg = theme.dark.fg0, bold = config.bold },
    Done                   { fg = theme.dark.orange, bold = config.bold },
    Error                  { GruvboxRed },
    Statement              { GruvboxRed },
    Conditional            { GruvboxRed },
    Repeat                 { GruvboxRed },
    Label                  { GruvboxRed },
    Exception              { GruvboxRed },
    Operator               { fg = theme.dark.orange },
    Keyword                { GruvboxRed },
    Identifier             { GruvboxBlue },
    Function               { GruvboxGreenBold },
    PreProc                { GruvboxAqua },
    Include                { GruvboxAqua },
    Define                 { GruvboxAqua },
    Macro                  { GruvboxAqua },
    PreCondit              { GruvboxAqua },
    Constant               { GruvboxPurple },
    Character              { GruvboxPurple },
    String                 { fg = theme.dark.green },
    Boolean                { GruvboxPurple },
    Number                 { GruvboxPurple },
    Float                  { GruvboxPurple },
    Type                   { GruvboxYellow },
    StorageClass           { GruvboxOrange },
    Structure              { GruvboxAqua },
    Typedef                { GruvboxYellow },
    Pmenu                  { fg = theme.dark.fg1, bg = theme.dark.bg00 },
    PmenuSel               { fg = theme.dark.bg2, bg = theme.dark.blue, gui = "bold" },
    PmenuSbar              { bg = theme.dark.bg1 },
    PmenuThumb             { bg = theme.dark.bg2 },
    -- DiffDelete             { bg = theme.dark.shaded_red },
    -- DiffAdd                { bg = theme.dark.shaded_green },
    -- DiffChange             { bg = theme.dark.shaded_aqua },
    -- DiffText               { bg = theme.dark.shaded_yellow },
    DiffDelete             { GruvboxRedShaded },
    DiffAdd                { GruvboxGreenShaded },
    DiffChange             { GruvboxAquaShaded },
    DiffText               { GruvboxYellowShaded },
    diffAdded              { GruvboxGreen },
    diffRemoved            { GruvboxRed },
    diffChanged            { GruvboxAqua },
    diffFile               { GruvboxOrange },
    diffNewFile            { GruvboxYellow },
    diffOldFile            { GruvboxOrange },
    diffLine               { GruvboxBlue },
    diffIndexLine          { diffChanged },
    SpellCap               { GruvboxBlueUnderline },
    SpellBad               { GruvboxRedUnderline },
    SpellLocal             { GruvboxAquaUnderline },
    SpellRare              { GruvboxPurpleUnderline },
    Whitespace             { fg = theme.dark.bg2 },
    SpecialChar            { fg = theme.dark.red }, --   Special character in a constant
    Delimiter              { fg = theme.dark.orange }, --   Character that needs attention
    Debug                  { fg = theme.dark.red }, --   Debugging statements
    SpecialComment         { fg = theme.dark.green }, --   Special things inside a comment (e.g. '\n')
    Tag                    { GruvboxAqua }, --   You can use CTRL-] on this

    -- LSP Diagnostic
    DiagnosticError             { GruvboxRed },
    DiagnosticSignError         { GruvboxRedSign },
    DiagnosticUnderlineError    { GruvboxRedShaded },
    DiagnosticWarn              { GruvboxYellow },
    DiagnosticSignWarn          { GruvboxYellowSign },
    DiagnosticUnderlineWarn     { GruvboxYellowShaded },
    DiagnosticInfo              { GruvboxBlue },
    DiagnosticSignInfo          { GruvboxBlueSign },
    DiagnosticUnderlineInfo     { GruvboxBlueShaded },
    DiagnosticHint              { GruvboxAqua },
    DiagnosticSignHint          { GruvboxAquaSign },
    DiagnosticUnderlineHint     { GruvboxAquaShaded },
    DiagnosticUnnecessary       { GruvboxAquaShaded },
    DiagnosticFloatingError     { GruvboxRed },
    DiagnosticFloatingWarn      { GruvboxOrange },
    DiagnosticFloatingInfo      { GruvboxBlue },
    DiagnosticFloatingHint      { GruvboxAqua },
    DiagnosticVirtualTextError  { GruvboxRed },
    DiagnosticVirtualTextWarn   { GruvboxYellow },
    DiagnosticVirtualTextInfo   { GruvboxBlue },
    DiagnosticVirtualTextHint   { GruvboxAqua },
    LspReferenceRead            { GruvboxYellowBold },
    LspReferenceText            { GruvboxYellowBold },
    LspReferenceWrite           { GruvboxOrangeBold },
    LspCodeLens                 { GruvboxGray },
    LspSignatureActiveParameter { Search },

    -- semantic token
    -- adapted from https://github.com/jdrouhard/neovim/blob/9f035559defd9d575f37fd825954610065d9cf96/src/nvim/highlight_group.c#L267
    sym"@class"         { Special },
    sym"@decorator"     { Identifier },
    sym"@enum"          { Special },
    sym"@enumMember"    { Constant },
    sym"@event"         { Identifier },
    sym"@interface"     { Identifier },
    sym"@modifier"      { Identifier },
    sym"@regexp"        { SpecialChar },
    sym"@struct"        { Special },
    sym"@typeParameter" { Type },

    -- nvim-treesitter (0.8 compat)
    -- Adapted from https://github.com/nvim-treesitter/nvim-treesitter/commit/42ab95d5e11f247c6f0c8f5181b02e816caa4a4f#commitcomment-87014462
    sym"@annotation"            { Operator },
    sym"@comment"               { Comment },
    sym"@none"                  { bg = "NONE", fg = "NONE" },
    sym"@preproc"               { PreProc },
    sym"@define"                { Define },
    sym"@operator"              { Operator },
    sym"@punctuation.delimiter" { Delimiter },
    sym"@punctuation.bracket"   { Delimiter },
    sym"@punctuation.special"   { Delimiter },
    sym"@string"                { String },
    sym"@string.regex"          { String },
    sym"@string.escape"         { SpecialChar },
    sym"@string.special"        { SpecialChar },
    sym"@character"             { Character },
    sym"@character.special"     { SpecialChar },
    sym"@boolean"               { Boolean },
    sym"@number"                { Number },
    sym"@float"                 { Float },
    sym"@function"              { Function },
    sym"@function.call"         { Function },
    sym"@function.builtin"      { Special },
    sym"@function.macro"        { Macro },
    sym"@method"                { Function },
    sym"@method.call"           { Function },
    sym"@constructor"           { Special },
    sym"@parameter"             { Identifier },
    sym"@keyword"               { Keyword },
    sym"@keyword.function"      { Keyword },
    sym"@keyword.return"        { Keyword },
    sym"@conditional"           { Conditional },
    sym"@repeat"                { Repeat },
    sym"@debug"                 { Debug },
    sym"@label"                 { Label },
    sym"@include"               { Include },
    sym"@exception"             { Exception },
    sym"@type"                  { Type },
    sym"@type.builtin"          { Type },
    sym"@type.qualifier"        { Type },
    sym"@type.definition"       { Typedef },
    sym"@storageclass"          { StorageClass },
    sym"@attribute"             { PreProc },
    sym"@field"                 { Identifier },
    sym"@property"              { Identifier },
    sym"@variable"              { GruvboxFg1 },
    sym"@variable.builtin"      { Special },
    sym"@constant"              { Constant },
    sym"@constant.builtin"      { Special },
    sym"@constant.macro"        { Define },
    sym"@namespace"             { GruvboxFg1 },
    sym"@symbol"                { Identifier },
    sym"@text"                  { GruvboxFg1 },
    sym"@text.title"            { Title },
    sym"@text.literal"          { String },
    sym"@text.uri"              { Underlined },
    sym"@text.math"             { Special },
    sym"@text.environment"      { Macro },
    sym"@text.environment.name" { Type },
    sym"@text.reference"        { Constant },
    sym"@text.todo"             { Todo },
    sym"@text.todo.unchecked"   { Todo },
    sym"@text.todo.checked"     { Done },
    sym"@text.note"             { SpecialComment },
    sym"@text.warning"          { WarningMsg },
    sym"@text.danger"           { ErrorMsg },
    sym"@text.diff.add"         { diffAdded },
    sym"@text.diff.delete"      { diffRemoved },
    sym"@tag"                   { Tag },
    sym"@tag.attribute"         { Identifier },
    sym"@tag.delimiter"         { Delimiter },

    -- nvim-treesitter (0.8 overrides)
    sym"@text.strong" { gui = "bold" },
    sym"@text.strike" { gui = "strikethrough" },
    sym"@text.emphasis" { gui = "NONE" },
    sym"@text.underline" { gui = "underline" },
    sym"@keyword.operator" { GruvboxRed },

    -- gitcommit
    gitcommitSelectedFile  { GruvboxGreen },
    gitcommitDiscardedFile { GruvboxRed },

    -- gitsigns.nvim
    GitSignsAdd    { GruvboxGreenSign },
    GitSignsChange { GruvboxAquaSign },
    GitSignsDelete { GruvboxRedSign },

    -- nvim-tree
    NvimTreeNormalFloat  { Normal },
    NvimTreeWinSeparator { GruvboxFg1 },
    NvimTreeSymlink      { fg = theme.dark.neutral_aqua },
    NvimTreeRootFolder   { fg = theme.dark.neutral_purple, gui = "bold" },
    NvimTreeFolderIcon   { fg = theme.dark.neutral_blue, gui = "bold" },
    NvimTreeFileIcon     { fg = theme.dark.light2 },
    NvimTreeExecFile     { fg = theme.dark.neutral_green, gui = "bold" },
    NvimTreeOpenedFile   { fg = theme.dark.bright_red, gui = "bold" },
    NvimTreeSpecialFile  { fg = theme.dark.neutral_yellow, gui = "bold,underline" },
    NvimTreeImageFile    { fg = theme.dark.neutral_purple },
    NvimTreeIndentMarker { fg = theme.dark.dark3 },
    NvimTreeGitDirty     { fg = theme.dark.neutral_yellow },
    NvimTreeGitStaged    { fg = theme.dark.neutral_yellow },
    NvimTreeGitMerge     { fg = theme.dark.neutral_purple },
    NvimTreeGitRenamed   { fg = theme.dark.neutral_purple },
    NvimTreeGitNew       { fg = theme.dark.neutral_yellow },
    NvimTreeGitDeleted   { fg = theme.dark.neutral_red },
    NvimTreeWindowPicker { bg = "#4493c8", fg = "#000000" }, -- swap-split always linked to this color group

    -- termdebug
    debugPC         { bg = theme.dark.faded_blue },
    debugBreakpoint { GruvboxRedSign },

    -- vim-startify
    StartifyBracket { GruvboxFg3 },
    StartifyFile    { GruvboxFg1 },
    StartifyNumber  { GruvboxBlue },
    StartifyPath    { GruvboxGray },
    StartifySlash   { GruvboxGray },
    StartifySection { GruvboxYellow },
    StartifySpecial { GruvboxBg2 },
    StartifyHeader  { GruvboxOrange },
    StartifyFooter  { GruvboxBg2 },
    StartifyVar     { StartifyPath },
    StartifySelect  { Title },

    -- vim-dirvish
    DirvishPathTail { GruvboxAqua },
    DirvishArg      { GruvboxYellow },

    -- netrw
    netrwDir      { GruvboxAqua },
    netrwClassify { GruvboxAqua },
    netrwLink     { GruvboxGray },
    netrwSymLink  { GruvboxFg1 },
    netrwExe      { GruvboxYellow },
    netrwComment  { GruvboxGray },
    netrwList     { GruvboxBlue },
    netrwHelpCmd  { GruvboxAqua },
    netrwCmdSep   { GruvboxFg3 },
    netrwVersion  { GruvboxGreen },

    -- nerdtree
    NERDTreeDir       { GruvboxAqua },
    NERDTreeDirSlash  { GruvboxAqua },
    NERDTreeOpenable  { GruvboxOrange },
    NERDTreeClosable  { GruvboxOrange },
    NERDTreeFile      { GruvboxFg1 },
    NERDTreeExecFile  { GruvboxYellow },
    NERDTreeUp        { GruvboxGray },
    NERDTreeCWD       { GruvboxGreen },
    NERDTreeHelp      { GruvboxFg1 },
    NERDTreeToggleOn  { GruvboxGreen },
    NERDTreeToggleOff { GruvboxRed },

    -- coc.nvim
    CocErrorSign          { GruvboxRedSign },
    CocWarningSign        { GruvboxOrangeSign },
    CocInfoSign           { GruvboxBlueSign },
    CocHintSign           { GruvboxAquaSign },
    CocErrorFloat         { GruvboxRed },
    CocWarningFloat       { GruvboxOrange },
    CocInfoFloat          { GruvboxBlue },
    CocHintFloat          { GruvboxAqua },
    CocDiagnosticsError   { GruvboxRed },
    CocDiagnosticsWarning { GruvboxOrange },
    CocDiagnosticsInfo    { GruvboxBlue },
    CocDiagnosticsHint    { GruvboxAqua },
    CocSelectedText       { GruvboxRed },
    CocMenuSel            { PmenuSel },
    CocCodeLens           { GruvboxGray },
    CocErrorHighlight     { GruvboxRedUnderline },
    CocWarningHighlight   { GruvboxOrangeUnderline },
    CocInfoHighlight      { GruvboxBlueUnderline },
    CocHintHighlight      { GruvboxAquaUnderline },

    -- telescope.nvim
    TelescopeNormal         { GruvboxFg1 },
    TelescopeSelection      { GruvboxOrangeBold },
    TelescopeSelectionCaret { GruvboxRed },
    TelescopeMultiSelection { GruvboxGray },
    TelescopeBorder         { TelescopeNormal },
    TelescopePromptBorder   { TelescopeNormal },
    TelescopeResultsBorder  { TelescopeNormal },
    TelescopePreviewBorder  { TelescopeNormal },
    TelescopeMatching       { GruvboxBlue },
    TelescopePromptPrefix   { GruvboxRed },
    TelescopePrompt         { TelescopeNormal },

    -- nvim-cmp
    CmpItemAbbr              { GruvboxFg0 },
    CmpItemAbbrDeprecated    { GruvboxFg1 },
    CmpItemAbbrMatch         { GruvboxBlueBold },
    CmpItemAbbrMatchFuzzy    { GruvboxBlueUnderline },
    CmpItemMenu              { GruvboxGray },
    CmpItemKindText          { GruvboxOrange },
    CmpItemKindVariable      { GruvboxOrange },
    CmpItemKindMethod        { GruvboxBlue },
    CmpItemKindFunction      { GruvboxBlue },
    CmpItemKindConstructor   { GruvboxYellow },
    CmpItemKindUnit          { GruvboxBlue },
    CmpItemKindField         { GruvboxBlue },
    CmpItemKindClass         { GruvboxYellow },
    CmpItemKindInterface     { GruvboxYellow },
    CmpItemKindModule        { GruvboxBlue },
    CmpItemKindProperty      { GruvboxBlue },
    CmpItemKindValue         { GruvboxOrange },
    CmpItemKindEnum          { GruvboxYellow },
    CmpItemKindOperator      { GruvboxYellow },
    CmpItemKindKeyword       { GruvboxPurple },
    CmpItemKindEvent         { GruvboxPurple },
    CmpItemKindReference     { GruvboxPurple },
    CmpItemKindColor         { GruvboxPurple },
    CmpItemKindSnippet       { GruvboxGreen },
    CmpItemKindFile          { GruvboxBlue },
    CmpItemKindFolder        { GruvboxBlue },
    CmpItemKindEnumMember    { GruvboxAqua },
    CmpItemKindConstant      { GruvboxOrange },
    CmpItemKindStruct        { GruvboxYellow },
    CmpItemKindTypeParameter { GruvboxYellow },

    -- navic (highlight icons)
    NavicIconsFile          { GruvboxBlue },
    NavicIconsModule        { GruvboxOrange },
    NavicIconsNamespace     { GruvboxBlue },
    NavicIconsPackage       { GruvboxAqua },
    NavicIconsClass         { GruvboxYellow },
    NavicIconsMethod        { GruvboxBlue },
    NavicIconsProperty      { GruvboxAqua },
    NavicIconsField         { GruvboxPurple },
    NavicIconsConstructor   { GruvboxBlue },
    NavicIconsEnum          { GruvboxPurple },
    NavicIconsInterface     { GruvboxGreen },
    NavicIconsFunction      { GruvboxBlue },
    NavicIconsVariable      { GruvboxPurple },
    NavicIconsConstant      { GruvboxOrange },
    NavicIconsString        { GruvboxGreen },
    NavicIconsNumber        { GruvboxOrange },
    NavicIconsBoolean       { GruvboxOrange },
    NavicIconsArray         { GruvboxOrange },
    NavicIconsObject        { GruvboxOrange },
    NavicIconsKey           { GruvboxAqua },
    NavicIconsNull          { GruvboxOrange },
    NavicIconsEnumMember    { GruvboxYellow },
    NavicIconsStruct        { GruvboxPurple },
    NavicIconsEvent         { GruvboxYellow },
    NavicIconsOperator      { GruvboxRed },
    NavicIconsTypeParameter { GruvboxRed },
    NavicText               { GruvboxFg0 },
    NavicSeparator          { GruvboxFg0 },

    -- html
    htmlTag                 { GruvboxAquaBold },
    htmlEndTag              { GruvboxAquaBold },
    htmlTagName             { GruvboxBlue },
    htmlArg                 { GruvboxOrange },
    htmlTagN                { GruvboxFg1 },
    htmlSpecialTagName      { GruvboxBlue },
    htmlLink                { fg = theme.dark.fg4, gui = "underline" },
    htmlSpecialChar         { GruvboxRed },
    htmlBold                { fg = theme.dark.fg0, bg = theme.dark.bg0, gui = "bold" },
    htmlBoldUnderline       { fg = theme.dark.fg0, bg = theme.dark.bg0, gui = "bold,underline" },
    htmlBoldItalic          { fg = theme.dark.fg0, bg = theme.dark.bg0, gui = "bold,italic" },
    htmlBoldUnderlineItalic { fg = theme.dark.fg0, bg = theme.dark.bg0, gui = "bold,italic,underline" },
    htmlUnderline           { fg = theme.dark.fg0, bg = theme.dark.bg0, gui = "underline" },
    htmlUnderlineItalic     { fg = theme.dark.fg0, bg = theme.dark.bg0, gui = "italic,underline" },
    htmlItalic              { fg = theme.dark.fg0, bg = theme.dark.bg0, gui = "italic" },

    -- xml
    xmlTag               { GruvboxAquaBold },
    xmlEndTag            { GruvboxAquaBold },
    xmlTagName           { GruvboxBlue },
    xmlEqual             { GruvboxBlue },
    docbkKeyword         { GruvboxAquaBold },
    xmlDocTypeDecl       { GruvboxGray },
    xmlDocTypeKeyword    { GruvboxPurple },
    xmlCdataStart        { GruvboxGray },
    xmlCdataCdata        { GruvboxPurple },
    dtdFunction          { GruvboxGray },
    dtdTagName           { GruvboxPurple },
    xmlAttrib            { GruvboxOrange },
    xmlProcessingDelim   { GruvboxGray },
    dtdParamEntityPunct  { GruvboxGray },
    dtdParamEntityDPunct { GruvboxGray },
    xmlAttribPunct       { GruvboxGray },
    xmlEntity            { GruvboxRed },
    xmlEntityPunct       { GruvboxRed },

    -- clojure
    clojureKeyword          { GruvboxBlue },
    clojureCond             { GruvboxOrange },
    clojureSpecial          { GruvboxOrange },
    clojureDefine           { GruvboxOrange },
    clojureFunc             { GruvboxYellow },
    clojureRepeat           { GruvboxYellow },
    clojureCharacter        { GruvboxAqua },
    clojureStringEscape     { GruvboxAqua },
    clojureException        { GruvboxRed },
    clojureRegexp           { GruvboxAqua },
    clojureRegexpEscape     { GruvboxAqua },
    clojureRegexpCharClass  { fg = theme.dark.fg3, gui = "bold" },
    clojureRegexpMod        { clojureRegexpCharClass },
    clojureRegexpQuantifier { clojureRegexpCharClass },
    clojureParen            { GruvboxFg3 },
    clojureAnonArg          { GruvboxYellow },
    clojureVariable         { GruvboxBlue },
    clojureMacro            { GruvboxOrange },
    clojureMeta             { GruvboxYellow },
    clojureDeref            { GruvboxYellow },
    clojureQuote            { GruvboxYellow },
    clojureUnquote          { GruvboxYellow },

    -- C
    cOperator   { GruvboxPurple },
    cppOperator { GruvboxPurple },
    cStructure  { GruvboxOrange },

    -- python
    pythonBuiltin     { GruvboxOrange },
    pythonBuiltinObj  { GruvboxOrange },
    pythonBuiltinFunc { GruvboxOrange },
    pythonFunction    { GruvboxAqua },
    pythonDecorator   { GruvboxRed },
    pythonInclude     { GruvboxBlue },
    pythonImport      { GruvboxBlue },
    pythonRun         { GruvboxBlue },
    pythonCoding      { GruvboxBlue },
    pythonOperator    { GruvboxRed },
    pythonException   { GruvboxRed },
    pythonExceptions  { GruvboxPurple },
    pythonBoolean     { GruvboxPurple },
    pythonDot         { GruvboxFg3 },
    pythonConditional { GruvboxRed },
    pythonRepeat      { GruvboxRed },
    pythonDottedName  { GruvboxGreenBold },

    -- CSS
    cssBraces               { GruvboxBlue },
    cssFunctionName         { GruvboxYellow },
    cssIdentifier           { GruvboxOrange },
    cssClassName            { GruvboxGreen },
    cssColor                { GruvboxBlue },
    cssSelectorOp           { GruvboxBlue },
    cssSelectorOp2          { GruvboxBlue },
    cssImportant            { GruvboxGreen },
    cssVendor               { GruvboxFg1 },
    cssTextProp             { GruvboxAqua },
    cssAnimationProp        { GruvboxAqua },
    cssUIProp               { GruvboxYellow },
    cssTransformProp        { GruvboxAqua },
    cssTransitionProp       { GruvboxAqua },
    cssPrintProp            { GruvboxAqua },
    cssPositioningProp      { GruvboxYellow },
    cssBoxProp              { GruvboxAqua },
    cssFontDescriptorProp   { GruvboxAqua },
    cssFlexibleBoxProp      { GruvboxAqua },
    cssBorderOutlineProp    { GruvboxAqua },
    cssBackgroundProp       { GruvboxAqua },
    cssMarginProp           { GruvboxAqua },
    cssListProp             { GruvboxAqua },
    cssTableProp            { GruvboxAqua },
    cssFontProp             { GruvboxAqua },
    cssPaddingProp          { GruvboxAqua },
    cssDimensionProp        { GruvboxAqua },
    cssRenderProp           { GruvboxAqua },
    cssColorProp            { GruvboxAqua },
    cssGeneratedContentProp { GruvboxAqua },

    -- javascript
    javaScriptBraces     { GruvboxFg1 },
    javaScriptFunction   { GruvboxAqua },
    javaScriptIdentifier { GruvboxRed },
    javaScriptMember     { GruvboxBlue },
    javaScriptNumber     { GruvboxPurple },
    javaScriptNull       { GruvboxPurple },
    javaScriptParens     { GruvboxFg3 },

    -- typescript
    typescriptReserved               { GruvboxAqua },
    typescriptLabel                  { GruvboxAqua },
    typescriptFuncKeyword            { GruvboxAqua },
    typescriptIdentifier             { GruvboxOrange },
    typescriptBraces                 { GruvboxFg1 },
    typescriptEndColons              { GruvboxFg1 },
    typescriptDOMObjects             { GruvboxFg1 },
    typescriptAjaxMethods            { GruvboxFg1 },
    typescriptLogicSymbols           { GruvboxFg1 },
    typescriptDocSeeTag              { Comment },
    typescriptDocParam               { Comment },
    typescriptDocTags                { Comment },
    typescriptGlobalObjects          { GruvboxFg1 },
    typescriptParens                 { GruvboxFg3 },
    typescriptOpSymbols              { GruvboxFg3 },
    typescriptHtmlElemProperties     { GruvboxFg1 },
    typescriptNull                   { GruvboxPurple },
    typescriptInterpolationDelimiter { GruvboxAqua },

    -- purescript
    purescriptModuleKeyword { GruvboxAqua },
    purescriptModuleName    { GruvboxFg1 },
    purescriptWhere         { GruvboxAqua },
    purescriptDelimiter     { GruvboxFg4 },
    purescriptType          { GruvboxFg1 },
    purescriptImportKeyword { GruvboxAqua },
    purescriptHidingKeyword { GruvboxAqua },
    purescriptAsKeyword     { GruvboxAqua },
    purescriptStructure     { GruvboxAqua },
    purescriptOperator      { GruvboxBlue },
    purescriptTypeVar       { GruvboxFg1 },
    purescriptConstructor   { GruvboxFg1 },
    purescriptFunction      { GruvboxFg1 },
    purescriptConditional   { GruvboxOrange },
    purescriptBacktick      { GruvboxOrange },

    -- coffescript
    coffeeExtendedOp { GruvboxFg3 },
    coffeeSpecialOp  { GruvboxFg3 },
    coffeeCurly      { GruvboxOrange },
    coffeeParen      { GruvboxFg3 },
    coffeeBracket    { GruvboxOrange },

    -- ruby
    rubyStringDelimiter { GruvboxGreen },
    rubyInterpolationDelimiter { GruvboxAqua },
    rubyDefinedOperator { GruvboxAqua },

    -- objc
    objcTypeModifier { GruvboxRed },
    objcDirective { GruvboxBlue },

    -- go
    goDirective   { GruvboxAqua },
    goConstants   { GruvboxPurple },
    goDeclaration { GruvboxRed },
    goDeclType    { GruvboxBlue },
    goBuiltins    { GruvboxOrange },

    -- lua
    luaIn       { GruvboxRed },
    luaFunction { GruvboxAqua },
    luaTable    { GruvboxOrange },

    -- moonscript
    moonSpecialOp  { GruvboxFg3 },
    moonExtendedOp { GruvboxFg3 },
    moonFunction   { GruvboxFg3 },
    moonObject     { GruvboxYellow },

    -- java
    javaAnnotation   { GruvboxBlue },
    javaDocTags      { GruvboxAqua },
    javaCommentTitle { Comment },
    javaParen        { GruvboxFg3 },
    javaParen1       { GruvboxFg3 },
    javaParen2       { GruvboxFg3 },
    javaParen3       { GruvboxFg3 },
    javaParen4       { GruvboxFg3 },
    javaParen5       { GruvboxFg3 },
    javaOperator     { GruvboxOrange },
    javaVarArg       { GruvboxGreen },

    -- elixir
    elixirDocString              { Comment },
    elixirStringDelimiter        { GruvboxGreen },
    elixirInterpolationDelimiter { GruvboxAqua },
    elixirModuleDeclaration      { GruvboxYellow },

    -- scala
    scalaNameDefinition          { GruvboxFg1 },
    scalaCaseFollowing           { GruvboxFg1 },
    scalaCapitalWord             { GruvboxFg1 },
    scalaTypeExtension           { GruvboxFg1 },
    scalaKeyword                 { GruvboxRed },
    scalaKeywordModifier         { GruvboxRed },
    scalaSpecial                 { GruvboxAqua },
    scalaOperator                { GruvboxFg1 },
    scalaTypeDeclaration         { GruvboxYellow },
    scalaTypeTypePostDeclaration { GruvboxYellow },
    scalaInstanceDeclaration     { GruvboxFg1 },
    scalaInterpolation           { GruvboxAqua },

    -- markdown
    markdownItalic            { fg = theme.dark.fg3, gui = "italic" },
    markdownBold              { fg = theme.dark.fg3, gui = "bold" },
    markdownBoldItalic        { fg = theme.dark.fg3, gui = "italic,bold" },
    markdownH1                { GruvboxGreenBold },
    markdownH2                { GruvboxGreenBold },
    markdownH3                { GruvboxYellowBold },
    markdownH4                { GruvboxYellowBold },
    markdownH5                { GruvboxYellow },
    markdownH6                { GruvboxYellow },
    markdownCode              { GruvboxAqua },
    markdownCodeBlock         { GruvboxAqua },
    markdownCodeDelimiter     { GruvboxAqua },
    markdownBlockquote        { GruvboxGray },
    markdownListMarker        { GruvboxGray },
    markdownOrderedListMarker { GruvboxGray },
    markdownRule              { GruvboxGray },
    markdownHeadingRule       { GruvboxGray },
    markdownUrlDelimiter      { GruvboxFg3 },
    markdownLinkDelimiter     { GruvboxFg3 },
    markdownLinkTextDelimiter { GruvboxFg3 },
    markdownHeadingDelimiter  { GruvboxOrange },
    markdownUrl               { GruvboxPurple },
    markdownUrlTitleDelimiter { GruvboxGreen },
    markdownLinkText          { fg = theme.dark.gray, gui = "underline" },
    markdownIdDeclaration     { markdownLinkText },

    -- haskell
    haskellType            { GruvboxBlue },
    haskellIdentifier      { GruvboxAqua },
    haskellSeparator       { GruvboxFg4 },
    haskellDelimiter       { GruvboxOrange },
    haskellOperators       { GruvboxPurple },
    haskellBacktick        { GruvboxOrange },
    haskellStatement       { GruvboxPurple },
    haskellConditional     { GruvboxPurple },
    haskellLet             { GruvboxRed },
    haskellDefault         { GruvboxRed },
    haskellWhere           { GruvboxRed },
    haskellBottom          { GruvboxRedBold },
    haskellImportKeywords  { GruvboxPurpleBold },
    haskellDeclKeyword     { GruvboxOrange },
    haskellDecl            { GruvboxOrange },
    haskellDeriving        { GruvboxPurple },
    haskellAssocType       { GruvboxAqua },
    haskellNumber          { GruvboxAqua },
    haskellPragma          { GruvboxRedBold },
    haskellTH              { GruvboxAquaBold },
    haskellForeignKeywords { GruvboxGreen },
    haskellKeyword         { GruvboxRed },
    haskellFloat           { GruvboxAqua },
    haskellInfix           { GruvboxPurple },
    haskellQuote           { GruvboxGreenBold },
    haskellShebang         { GruvboxYellowBold },
    haskellLiquid          { GruvboxPurpleBold },
    haskellQuasiQuoted     { GruvboxBlueBold },
    haskellRecursiveDo     { GruvboxPurple },
    haskellQuotedType      { GruvboxRed },
    haskellPreProc         { GruvboxFg4 },
    haskellTypeRoles       { GruvboxRedBold },
    haskellTypeForall      { GruvboxRed },
    haskellPatternKeyword  { GruvboxBlue },

    -- json
    jsonKeyword { GruvboxGreen },
    jsonQuote   { GruvboxGreen },
    jsonBraces  { GruvboxFg1 },
    jsonString  { GruvboxFg1 },

    -- mail
    mailQuoted1   { GruvboxAqua },
    mailQuoted2   { GruvboxPurple },
    mailQuoted3   { GruvboxYellow },
    mailQuoted4   { GruvboxGreen },
    mailQuoted5   { GruvboxRed },
    mailQuoted6   { GruvboxOrange },
    mailSignature { Comment },

    -- c#
    csBraces                 { GruvboxFg1 },
    csEndColon               { GruvboxFg1 },
    csLogicSymbols           { GruvboxFg1 },
    csParens                 { GruvboxFg3 },
    csOpSymbols              { GruvboxFg3 },
    csInterpolationDelimiter { GruvboxFg3 },
    csInterpolationAlignDel  { GruvboxAquaBold },
    csInterpolationFormat    { GruvboxAqua },
    csInterpolationFormatDel { GruvboxAquaBold },

    -- rust
    rustSigil              { GruvboxOrange },
    rustEscape             { GruvboxAqua },
    rustStringContinuation { GruvboxAqua },
    rustEnum               { GruvboxAqua },
    rustStructure          { GruvboxAqua },
    rustModPathSep         { GruvboxFg2 },
    rustCommentLineDoc     { Comment },
    rustDefault            { GruvboxAqua },

    -- ocaml
    ocamlOperator       { GruvboxFg1 },
    ocamlKeyChar        { GruvboxOrange },
    ocamlArrow          { GruvboxOrange },
    ocamlInfixOpKeyword { GruvboxRed },
    ocamlConstructor    { GruvboxOrange },

    -- lspsaga.nvim
    LspSagaCodeActionTitle     { Title },
    LspSagaCodeActionBorder    { GruvboxFg1 },
    LspSagaCodeActionContent   { fg = theme.dark.green, gui = "bold" },
    LspSagaLspFinderBorder     { GruvboxFg1 },
    LspSagaAutoPreview         { GruvboxOrange },
    TargetWord                 { fg = theme.dark.blue, gui = "bold" },
    FinderSeparator            { GruvboxAqua },
    LspSagaDefPreviewBorder    { GruvboxBlue },
    LspSagaHoverBorder         { GruvboxOrange },
    LspSagaRenameBorder        { GruvboxBlue },
    LspSagaDiagnosticSource    { GruvboxOrange },
    LspSagaDiagnosticBorder    { GruvboxPurple },
    LspSagaDiagnosticHeader    { GruvboxGreen },
    LspSagaSignatureHelpBorder { GruvboxGreen },
    SagaShadow                 { GruvboxBg1 },

    -- dashboard-nvim
    DashboardShortCut { GruvboxOrange },
    DashboardHeader   { GruvboxAqua },
    DashboardCenter   { GruvboxYellow },
    DashboardFooter   { fg = theme.dark.purple, gui = "italic" },

    -- mason
    MasonHighlight                   { GruvboxAqua },
    MasonHighlightBlock              { fg = theme.dark.black, bg = theme.dark.blue },
    MasonHighlightBlockBold          { fg = theme.dark.black, bg = theme.dark.blue, gui = "bold" },
    MasonHighlightSecondary          { fg = theme.dark.yellow },
    MasonHighlightBlockSecondary     { fg = theme.dark.black, bg = theme.dark.yellow },
    MasonHighlightBlockBoldSecondary { fg = theme.dark.black, bg = theme.dark.yellow, gui = "bold" },
    MasonHeader                      { MasonHighlightBlockBoldSecondary },
    MasonHeaderSecondary             { MasonHighlightBlockBold },
    MasonMuted                       { fg = theme.dark.fg4 },
    MasonMutedBlock                  { fg = theme.dark.black, bg = theme.dark.fg4 },
    MasonMutedBlockBold              { fg = theme.dark.black, bg = theme.dark.fg4, gui = "bold" },

    -- lsp-inlayhints.nvim
    LspInlayHint { Comment },

    -- carbon.nvim
    CarbonFile          { GruvboxFg1 },
    CarbonExe           { GruvboxYellow },
    CarbonSymlink       { GruvboxAqua },
    CarbonBrokenSymlink { GruvboxRed },
    CarbonIndicator     { GruvboxGray },
    CarbonDanger        { GruvboxRed },
    CarbonPending       { GruvboxYellow },

    -- notify.nvim
    NotifyDEBUGBorder { GruvboxBlue },
    NotifyDEBUGIcon   { GruvboxBlue },
    NotifyDEBUGTitle  { GruvboxBlue },
    NotifyERRORBorder { GruvboxRed },
    NotifyERRORIcon   { GruvboxRed },
    NotifyERRORTitle  { GruvboxRed },
    NotifyINFOBorder  { GruvboxAqua },
    NotifyINFOIcon    { GruvboxAqua },
    NotifyINFOTitle   { GruvboxAqua },
    NotifyTRACEBorder { GruvboxGreen },
    NotifyTRACEIcon   { GruvboxGreen },
    NotifyTRACETitle  { GruvboxGreen },
    NotifyWARNBorder  { GruvboxYellow },
    NotifyWARNIcon    { GruvboxYellow },
    NotifyWARNTitle   { GruvboxYellow },

    -- nvim-ts-rainbow2
    TSRainbowRed    { GruvboxRed },
    TSRainbowYellow { GruvboxYellow },
    TSRainbowBlue   { GruvboxBlue },
    TSRainbowOrange { GruvboxOrange },
    TSRainbowGreen  { GruvboxGreen },
    TSRainbowViolet { GruvboxPurple },
    TSRainbowCyan   { GruvboxAqua },

    CommentYellow { GruvboxYellowShaded },
    CommentRed    { GruvboxRedShaded },
    CommentBlue   { GruvboxBlueShaded },
    CommentCyan   { GruvboxAquaShaded },
    CommentPurple { GruvboxPurpleShaded },
    CommentGreen  { GruvboxGreenShaded },
    CommentWhite  { fg = theme.dark.fg1, bg = theme.dark.bg2, gui = "bold" },

    IndentBlanklineChar        { fg = theme.dark.bg1 },
    IndentBlanklineContextChar { fg = theme.dark.bg4, gui = "nocombine" },

    -- -- voldikss/vim-floaterm
    FloatermBorder { bg = theme.dark.bg0, fg = theme.dark.fg0 },

    -- Neogit
    -- NeogitNotificationInfo     { fg = "#80ff95" },
    -- NeogitNotificationWarning  { fg = "#fff454" },
    -- NeogitNotificationError    { fg = "#c44323" },
    -- NeogitDiffAddHighlight     { bg = "#404040", fg="#859900" },
    -- NeogitDiffDeleteHighlight  { bg = "#404040", fg="#dc322f" },
    -- NeogitDiffContextHighlight { bg = "#333333", fg="#b2b2b2" },
    -- NeogitDiffContext          { bg = "#262626", fg="#b2b2b2" },
    -- NeogitHunkHeader           { bg = "#cccccc", fg="#404040" },
    -- NeogitHunkHeaderHighlight  { bg = "#cccccc", fg="#4d4d4d" },

    -- rainbow-delimiters.nvim
    RainbowDelimiterRed { fg = theme.dark.red },
    RainbowDelimiterYellow { fg = theme.dark.yellow },
    RainbowDelimiterBlue { fg = theme.dark.blue },
    RainbowDelimiterOrange { fg = theme.dark.orange },
    RainbowDelimiterGreen { fg = theme.dark.green },
    RainbowDelimiterViolet { fg = theme.dark.purple },
    RainbowDelimiterCyan { fg = theme.dark.aqua },
  }












end)

-- Return our parsed theme for extension or use elsewhere.
return M

-- vi:nowrap
