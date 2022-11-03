" {{{ Setup
  set background=dark
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
  let g:colors_name="10x-dark"
" }}}

" {{{ Italics
  let g:theme_italic = get(g:, 'theme_italic', 0)
  let s:italic = ""
  if g:theme_italic == 1
    let s:italic = "italic"
  endif
"}}}

" {{{ Bold
  let g:theme_bold = get(g:, 'theme_bold', 0)
  let s:bold = ""
  if g:theme_bold == 1
   let s:bold = "bold"
  endif
"}}}

" {{{ Colors
  let s:base00 = ['#2b2d3a', '235']
  let s:base01 = ['#3f445b', '237']
  let s:base02 = ['#5c6370', '240']
  let s:base03 = ['#828997', '243']
  let s:base04 = ['#a7adba', '145']
  let s:base05 = ['#a7adba', '251']
  let s:base06 = ['#c5cdd9', '252']
  let s:base07 = ['#c5cdd9', '253']
  let s:red    = ['#ec7279', '203']
  let s:orange = ['#e2b35e', '209']
  let s:yellow = ['#F2FF3B', '221']
  let s:green  = ['#7fcd6e', '114']
  let s:cyan   = ['#4ddbc1', '73']
  let s:blue   = ['#6cb6eb', '68']
  let s:purple = ['#d38aea', '176']
  let s:brown  = ['#ab7967', '137']
  let s:white  = ['#ffffff', '15']
  let s:none   = ['NONE',    'NONE']

" }}}

" {{{ Highlight function
function! s:highlight(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "highlight " . a:group . " guifg=" .  a:fg[0]
    exec "highlight " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "highlight " . a:group . " guibg=" .  a:bg[0]
    exec "highlight " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "highlight " . a:group . " gui=" .   a:attr
    exec "highlight " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "highlight " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction
" }}}

" {{{ call s::hi(group, fg, bg, gui, guisp)
  call s:highlight('Bold',                               '',       '',       s:bold,      '')
  call s:highlight('Debug',                              s:red,    '',       '',          '')
  call s:highlight('Directory',                          s:blue,   '',       '',          '')
  call s:highlight('ErrorMsg',                           s:red,    s:base00, '',          '')
  call s:highlight('Exception',                          s:red,    '',       '',          '')
  call s:highlight('FoldColumn',                         s:blue,   s:base00, '',          '')
  call s:highlight('Folded',                             s:base03, s:base01, s:italic,    '')
  call s:highlight('IncSearch',                          s:base01, s:orange, 'NONE',      '')
  call s:highlight('Italic',                             '',       '',       s:italic,    '')

  call s:highlight('Macro',                              s:orange,    '',       '',          '')
  call s:highlight('MatchParen',                         s:base05, s:base03, '',          '')
  call s:highlight('ModeMsg',                            s:green,  '',       '',          '')
  call s:highlight('MoreMsg',                            s:green,  '',       '',          '')
  call s:highlight('Question',                           s:blue,   '',       '',          '')
  call s:highlight('Search',                             s:base03, s:yellow, '',          '')
  call s:highlight('SpecialKey',                         s:base03, '',       '',          '')
  call s:highlight('TooLong',                            s:red,    '',       '',          '')
  call s:highlight('Underlined',                         s:red,    '',       '',          '')
  call s:highlight('Visual',                             '',       s:base02, '',          '')
  call s:highlight('VisualNOS',                          s:red,    '',       '',          '')
  call s:highlight('WarningMsg',                         s:red,    '',       '',          '')
  call s:highlight('WildMenu',                           s:base07, s:blue,   '',          '')
  call s:highlight('Title',                              s:blue,   '',       '',          '')
  call s:highlight('Conceal',                            s:blue,   s:base00, '',          '')
  call s:highlight('Cursor',                             s:base00, s:base05, '',          '')
  call s:highlight('NonText',                            s:base03, '',       '',          '')
  call s:highlight('Normal',                             s:base07, s:base00, '',          '')
  call s:highlight('EndOfBuffer',                        s:base05, s:base00, '',          '')
  call s:highlight('LineNr',                             s:base03, s:base00, '',          '')
  call s:highlight('SignColumn',                         s:base00, s:base00, '',          '')
  call s:highlight('StatusLine',                         s:base01, s:base03, '',          '')
  call s:highlight('StatusLineNC',                       s:base03, s:base01, '',          '')
  call s:highlight('VertSplit',                          s:base00, s:base02, '',          '')
  call s:highlight('ColorColumn',                        '',       s:base01, '',          '')
  call s:highlight('CursorColumn',                       '',       s:base01, '',          '')
  call s:highlight('CursorLine',                         '',       s:base01, 'None',      '')
  call s:highlight('CursorLineNR',                       s:base00, s:base00, '',          '')
  call s:highlight('CursorLineNr',                       s:base03, s:base01, '',          '')
  call s:highlight('PMenu',                              s:base04, s:base01, '',          '')
  call s:highlight('PMenuSel',                           s:base07, s:blue,   '',          '')
  call s:highlight('PmenuSbar',                          '',       s:base02, '',          '')
  call s:highlight('PmenuThumb',                         '',       s:base07, '',          '')
  call s:highlight('TabLine',                            s:base03, s:base01, '',          '')
  call s:highlight('TabLineFill',                        s:base03, s:base01, '',          '')
  call s:highlight('TabLineSel',                         s:green,  s:base01, '',          '')
  call s:highlight('helpExample',                        s:yellow, '',       '',          '')
  call s:highlight('helpCommand',                        s:yellow, '',       '',          '')
  " Standard syntax highlighting
  call s:highlight('Boolean',                            s:cyan,   '',       s:italic,    '')
  call s:highlight('Character',                          s:green,  '',       '',          '')
  call s:highlight('Comment',                            s:base03, '',       s:italic,    '')
  call s:highlight('Conditional',                        s:purple, '',       '',          '')
  call s:highlight('Constant',                           s:orange, '',       '',          '')
  call s:highlight('Define',                             s:purple, '',       '',          '')
  call s:highlight('Delimiter',                          s:cyan,   '',       '',          '')
  call s:highlight('Float',                              s:orange, '',       '',          '')
  call s:highlight('Function',                           s:blue,   '',       s:italic,    '')
  call s:highlight('Identifier',                         s:cyan,   '',       '',          '')
  call s:highlight('Include',                            s:blue,   '',       '',          '')
  call s:highlight('Keyword',                            s:purple, '',       '',          '')
  call s:highlight('Label',                              s:yellow, '',       '',          '')
  call s:highlight('Number',                             s:orange, '',       '',          '')
  call s:highlight('Operator',                           s:base05, '',       '',          '')
  call s:highlight('PreProc',                            s:yellow, '',       '',          '')
  call s:highlight('Repeat',                             s:yellow, '',       '',          '')
  call s:highlight('Special',                            s:cyan,   '',       '',          '')
  call s:highlight('SpecialChar',                        s:brown,  '',       '',          '')
  call s:highlight('Statement',                          s:red,    '',       '',          '')
  call s:highlight('StorageClass',                       s:yellow, '',       '',          '')
  call s:highlight('String',                             s:green,  '',       '',          '')
  call s:highlight('Structure',                          s:purple, '',       '',          '')
  call s:highlight('Tag',                                s:yellow, '',       '',          '')
  call s:highlight('Todo',                               s:orange, s:base01, '',          '')
  call s:highlight('Type',                               s:cyan  , '',       '',          '')
  call s:highlight('Typedef',                            s:cyan  , '',       '',          '')

  " LSP
  call s:highlight('LspDiagnosticsDefaultError',         '',       '',       '',          '')
  call s:highlight('LspDiagnosticsSignError',            s:red,    '',       '',          '')
  call s:highlight('LspDiagnosticsUnderlineError',       '',       '',       'undercurl', '')

  call s:highlight('LspDiagnosticsDefaultWarning',       '',       '',       '',          '')
  call s:highlight('LspDiagnosticsSignWarning',          s:yellow, '',       '',          '')
  call s:highlight('LspDiagnosticsUnderlineWarning',     '',       '',       'undercurl', '')

  call s:highlight('LspDiagnosticsDefaultInformation',   '',       '',       '',          '')
  call s:highlight('LspDiagnosticsSignInformation',      s:blue,   '',       '',          '')
  call s:highlight('LspDiagnosticsUnderlineInformation', '',       '',       'undercurl', '')

  call s:highlight('LspDiagnosticsDefaultHint',          '',       '',       '',          '')
  call s:highlight('LspDiagnosticsSignHint',             s:cyan,   '',       '',          '')
  call s:highlight('LspDiagnosticsUnderlineHint',        '',       '',       'undercurl', '')


  " TreeSitter stuff
  call s:highlight('TSInclude',                          s:cyan,   '',       '',          '')
  call s:highlight('TSPunctBracket',                     s:cyan,   '',       '',          '')
  call s:highlight('TSPunctDelimiter',                   s:base07, '',       '',          '')
  call s:highlight('TSParameter',                        s:base07, '',       '',          '')
  call s:highlight('TSType',                             s:blue,   '',       '',          '')
  call s:highlight('TSFunction',                         s:cyan,   '',       '',          '')
  call s:highlight('TSTagDelimiter',                     s:cyan,   '',       '',          '')
  call s:highlight('TSProperty',                         s:yellow, '',       '',          '')
  call s:highlight('TSMethod',                           s:blue,   '',       '',          '')
  call s:highlight('TSParameter',                        s:yellow, '',       '',          '')
  call s:highlight('TSConstructor',                      s:base07, '',       '',          '')
  call s:highlight('TSVariable',                         s:base07, '',       '',          '')
  call s:highlight('TSOperator',                         s:base07, '',       '',          '')
  call s:highlight('TSTag',                              s:base07, '',       '',          '')
  call s:highlight('TSKeyword',                          s:purple, '',       '',          '')
  call s:highlight('TSKeywordOperator',                  s:purple, '',       '',          '')
  call s:highlight('TSVariableBuiltin',                  s:red,    '',       '',          '')
  call s:highlight('TSLabel',                            s:cyan,   '',       '',          '')

  call s:highlight('SpellBad',                           '',       '',       'undercurl', '')
  call s:highlight('SpellLocal',                         '',       '',       'undercurl', '')
  call s:highlight('SpellCap',                           '',       '',       'undercurl', '')
  call s:highlight('SpellRare',                          '',       '',       'undercurl', '')

  call s:highlight('csClass',                            s:yellow, '',       '',          '')
  call s:highlight('csAttribute',                        s:yellow, '',       '',          '')
  call s:highlight('csModifier',                         s:purple, '',       '',          '')
  call s:highlight('csType',                             s:red,    '',       '',          '')
  call s:highlight('csUnspecifiedStatement',             s:blue,   '',       '',          '')
  call s:highlight('csContextualStatement',              s:purple, '',       '',          '')
  call s:highlight('csNewDecleration',                   s:red,    '',       '',          '')
  call s:highlight('cOperator',                          s:cyan,   '',       '',          '')
  call s:highlight('cPreCondit',                         s:purple, '',       '',          '')

  call s:highlight('cssColor',                           s:cyan,   '',       '',          '')
  call s:highlight('cssBraces',                          s:yellow, '',       '',          '')
  call s:highlight('cssClassName',                       s:purple, '',       '',          '')


  call s:highlight('DiffAdd',                            s:green,  s:base01, s:bold,      '')
  call s:highlight('DiffChange',                         s:base03, s:base01, '',          '')
  call s:highlight('DiffDelete',                         s:red,    s:base01, '',          '')
  call s:highlight('DiffText',                           s:blue,   s:base01, '',          '')
  call s:highlight('DiffAdded',                          s:base07, s:green,  s:bold,      '')
  call s:highlight('DiffFile',                           s:red,    s:base00, '',          '')
  call s:highlight('DiffNewFile',                        s:green,  s:base00, '',          '')
  call s:highlight('DiffLine',                           s:blue,   s:base00, '',          '')
  call s:highlight('DiffRemoved',                        s:base07, s:red,    s:bold,      '')

  call s:highlight('gitCommitOverflow',                  s:red,    '',       '',          '')
  call s:highlight('gitCommitSummary',                   s:green,  '',       '',          '')

  call s:highlight('htmlBold',                           s:purple, '',       '',          '')
  call s:highlight('htmlItalic',                         s:purple, '',       '',          '')
  call s:highlight('htmlTag',                            s:red,   '',       '',          '')
  call s:highlight('htmlEndTag',                         s:red,   '',       '',          '')
  call s:highlight('htmlArg',                            s:orange, '',       '',          '')
  call s:highlight('htmlTagName',                        s:base07, '',       '',          '')

  call s:highlight('javaScript',                         s:base05, '',       '',          '')
  call s:highlight('javaScriptNumber',                   s:orange, '',       '',          '')
  call s:highlight('javaScriptBraces',                   s:yellow, '',       '',          '')

  call s:highlight('jsonKeyword',                        s:green,  '',       '',          '')
  call s:highlight('jsonQuote',                          s:green,  '',       '',          '')

  call s:highlight('markdownCode',                       s:green,  '',       '',          '')
  call s:highlight('markdownCodeBlock',                  s:green,  '',       '',          '')
  call s:highlight('markdownHeadingDelimiter',           s:blue,   '',       '',          '')
  call s:highlight('markdownItalic',                     s:purple, '',       s:italic,    '')
  call s:highlight('markdownBold',                       s:yellow, '',       s:bold,      '')
  call s:highlight('markdownCodeDelimiter',              s:brown,  '',       s:italic,    '')
  call s:highlight('markdownError',                      s:base05, s:base00, '',          '')

  call s:highlight('typescriptParens',                   s:base05, s:none,   '',          '')

  call s:highlight('NeomakeErrorSign',                   s:red,    s:base00, '',          '')
  call s:highlight('NeomakeWarningSign',                 s:yellow, s:base00, '',          '')
  call s:highlight('NeomakeInfoSign',                    s:white,  s:base00, '',          '')
  call s:highlight('NeomakeError',                       s:red,    '',       'underline', s:red)
  call s:highlight('NeomakeWarning',                     s:red,    '',       'underline', s:red)

  call s:highlight('ALEErrorSign',                       s:red,    s:base00, s:bold,      '')
  call s:highlight('ALEWarningSign',                     s:yellow, s:base00, s:bold,      '')
  call s:highlight('ALEInfoSign',                        s:white,  s:base00, s:bold,      '')

  call s:highlight('NERDTreeExecFile',                   s:base05, '',       '',          '')
  call s:highlight('NERDTreeDirSlash',                   s:blue,   '',       '',          '')
  call s:highlight('NERDTreeOpenable',                   s:blue,   '',       '',          '')
  call s:highlight('NERDTreeFile',                       '',       s:none,   '',          '')
  call s:highlight('NERDTreeFlags',                      s:blue,   '',       '',          '')

  call s:highlight('phpComparison',                      s:base05, '',       '',          '')
  call s:highlight('phpParent',                          s:base05, '',       '',          '')
  call s:highlight('phpMemberSelector',                  s:base05, '',       '',          '')

  call s:highlight('pythonRepeat',                       s:purple, '',       '',          '')
  call s:highlight('pythonOperator',                     s:purple, '',       '',          '')

  call s:highlight('rubyConstant',                       s:yellow, '',       '',          '')
  call s:highlight('rubySymbol',                         s:green,  '',       '',          '')
  call s:highlight('rubyAttribute',                      s:blue,   '',       '',          '')
  call s:highlight('rubyInterpolation',                  s:green,  '',       '',          '')
  call s:highlight('rubyInterpolationDelimiter',         s:brown,  '',       '',          '')
  call s:highlight('rubyStringDelimiter',                s:green,  '',       '',          '')
  call s:highlight('rubyRegexp',                         s:cyan,   '',       '',          '')

  call s:highlight('sassidChar',                         s:red,    '',       '',          '')
  call s:highlight('sassClassChar',                      s:orange, '',       '',          '')
  call s:highlight('sassInclude',                        s:purple, '',       '',          '')
  call s:highlight('sassMixing',                         s:purple, '',       '',          '')
  call s:highlight('sassMixinName',                      s:blue,   '',       '',          '')

  call s:highlight('vimfilerLeaf',                       s:base05, '',       '',          '')
  call s:highlight('vimfilerNormalFile',                 s:base05, s:base00, '',          '')
  call s:highlight('vimfilerOpenedFile',                 s:blue,   '',       '',          '')
  call s:highlight('vimfilerClosedFile',                 s:blue,   '',       '',          '')

  call s:highlight('GitGutterAdd',                       s:green,  s:base00, s:bold,      '')
  call s:highlight('GitGutterChange',                    s:blue,   s:base00, s:bold,      '')
  call s:highlight('GitGutterDelete',                    s:red,    s:base00, s:bold,      '')
  call s:highlight('GitGutterChangeDelete',              s:purple, s:base00, s:bold,      '')

  call s:highlight('SignifySignAdd',                     s:green,  s:base00, s:bold,      '')
  call s:highlight('SignifySignChange',                  s:blue,   s:base00, s:bold,      '')
  call s:highlight('SignifySignDelete',                  s:red,    s:base00, s:bold,      '')
  call s:highlight('SignifySignChangeDelete',            s:purple, s:base00, s:bold,      '')
  call s:highlight('SignifySignDeleteFirstLine',         s:red,    s:base00, s:bold,      '')

  call s:highlight('xmlTag',                             s:cyan,   '',       '',          '')
  call s:highlight('xmlTagName',                         s:base05, '',       '',          '')
  call s:highlight('xmlEndTag',                          s:cyan,   '',       '',          '')
  call s:highlight('Defx_filename_directory',            s:blue,   '',       '',          '')

  call s:highlight('CocErrorSign',                       s:red,    '',       '',          '')
  call s:highlight('CocWarningSign',                     s:yellow, '',       '',          '')
  call s:highlight('CocInfoSign',                        s:blue,   '',       '',          '')
  call s:highlight('CocHintSign',                        s:cyan,   '',       '',          '')
  call s:highlight('CocErrorFloat',                      s:red,    '',       '',          '')
  call s:highlight('CocWarningFloat',                    s:yellow, '',       '',          '')
  call s:highlight('CocInfoFloat',                       s:blue,   '',       '',          '')
  call s:highlight('CocHintFloat',                       s:cyan,   '',       '',          '')
  call s:highlight('CocDiagnosticsError',                s:red,    '',       '',          '')
  call s:highlight('CocDiagnosticsWarning',              s:yellow, '',       '',          '')
  call s:highlight('CocDiagnosticsInfo',                 s:blue,   '',       '',          '')
  call s:highlight('CocDiagnosticsHint',                 s:cyan,   '',       '',          '')
  call s:highlight('CocSelectedText',                    s:purple, '',       '',          '')
  call s:highlight('CocCodeLens',                        s:base04, '',       '',          '')
" }}}

" {{{ Terminal
if has('nvim')
  let g:terminal_color_0=s:base00[0]
  let g:terminal_color_8=s:base03[0]

  let g:terminal_color_1=s:red[0]
  let g:terminal_color_9=s:red[0]

  let g:terminal_color_2=s:green[0]
  let g:terminal_color_10=s:green[0]

  let g:terminal_color_3=s:yellow[0]
  let g:terminal_color_11=s:yellow[0]

  let g:terminal_color_4=s:blue[0]
  let g:terminal_color_12=s:blue[0]

  let g:terminal_color_5=s:purple[0]
  let g:terminal_color_13=s:purple[0]

  let g:terminal_color_6=s:cyan[0]
  let g:terminal_color_14=s:cyan[0]

  let g:terminal_color_7=s:base05[0]
  let g:terminal_color_15=s:base05[0]

  let g:terminal_color_background=s:base00[0]
  let g:terminal_color_foreground=s:white[0]
else
  let g:terminal_ansi_colors = [
     \ s:base00[0],
     \ s:red[0],
     \ s:green[0],
     \ s:yellow[0],
     \ s:blue[0],
     \ s:purple[0],
     \ s:cyan[0],
     \ s:white[0],
     \ s:base03[0],
     \ s:red[0],
     \ s:green[0],
     \ s:yellow[0],
     \ s:blue[0],
     \ s:purple[0],
     \ s:cyan[0],
     \ s:white[0],
     \]
endif

