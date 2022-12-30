" [10xDark.vim](https://github.com/joshdick/10xDark.vim/)

let s:overrides = get(g:, "ten_x_dark_color_overrides", {})

let s:colors = {
      \ "red": get(s:overrides, "red", { "gui": "#ec7279", "cterm": "204", "cterm16": "1" }),
      \ "dark_red": get(s:overrides, "dark_red", { "gui": "#ec7279", "cterm": "196", "cterm16": "9" }),
      \ "green": get(s:overrides, "green", { "gui": "#7fcd6e", "cterm": "114", "cterm16": "2" }),
      \ "yellow": get(s:overrides, "yellow", { "gui": "#E3D23C", "cterm": "180", "cterm16": "3" }),
      \ "dark_yellow": get(s:overrides, "dark_yellow", { "gui": "#e2b35e", "cterm": "173", "cterm16": "11" }),
      \ "blue": get(s:overrides, "blue", { "gui": "#6cb6eb", "cterm": "39", "cterm16": "4" }),
      \ "purple": get(s:overrides, "purple", { "gui": "#d38aea", "cterm": "170", "cterm16": "5" }),
      \ "cyan": get(s:overrides, "cyan", { "gui": "#4ddbc1", "cterm": "38", "cterm16": "6" }),
      \ "white": get(s:overrides, "white", { "gui": "#c5cdd9", "cterm": "145", "cterm16": "15" }),
      \ "black": get(s:overrides, "black", { "gui": "#313135", "cterm": "235", "cterm16": "0" }),
      \ "foreground": get(s:overrides, "foreground", { "gui": "#c5cdd9", "cterm": "145", "cterm16": "NONE" }),
      \ "background": get(s:overrides, "background", { "gui": "#313135", "cterm": "235", "cterm16": "NONE" }),
      \ "comment_grey": get(s:overrides, "comment_grey", { "gui": "#5c6370", "cterm": "59", "cterm16": "7" }),
      \ "gutter_fg_grey": get(s:overrides, "gutter_fg_grey", { "gui": "#3f445b", "cterm": "238", "cterm16": "8" }),
      \ "cursor_grey": get(s:overrides, "cursor_grey", { "gui": "#3f445b", "cterm": "236", "cterm16": "0" }),
      \ "visual_grey": get(s:overrides, "visual_grey", { "gui": "#5c6370", "cterm": "237", "cterm16": "8" }),
      \ "menu_grey": get(s:overrides, "menu_grey", { "gui": "#5c6370", "cterm": "237", "cterm16": "7" }),
      \ "special_grey": get(s:overrides, "special_grey", { "gui": "#3f445b", "cterm": "238", "cterm16": "7" }),
      \ "vertsplit": get(s:overrides, "vertsplit", { "gui": "#3f445b", "cterm": "59", "cterm16": "7" }),
      \}

function! ten_x_dark#GetColors()
  return s:colors
endfunction
