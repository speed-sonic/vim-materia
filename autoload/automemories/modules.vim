"=============================================================================
" FILE: automemories.vim
" AUTHOR:  Alex Layton <omytty.alex@126.com>
" License: MIT license
"=============================================================================

let s:modules = {
  \ 'aux.git': ['vim_gitgutter', 'vim_fugitive', 'coc_git'],
  \ 'aux.panel': ['vista_vim', 'vim_peekaboo', 'undotree'],
  \ 'aux.terminal': ['vim_floaterm'],
  \ 'aux.view': ['goyo', 'limelight_vim', 'vim_interestingwords'],
  \ 'aux.tmux': ['vim_tmux_navigator'],
  \ 'code.completion': ['coc_nvim', 'supertab', 'auto_pairs', 'vim_smooth_scroll', 'vim_indentguides'],
  \ 'code.check': ['vim_better_whitespace'],
  \ 'code.comment': ['nerdcommenter'],
  \ 'code.convenience': ['vim_surround', 'vim_visual_multi', 'supertab'],
  \ 'code.format': ['vim_easy_align', 'editorconfig_vim'],
  \ 'code.search': ['vim_visualstar', 'vim_interestingwords'],
  \ 'decoration.airline': ['vim_airline', 'vim_airline_themes', 'vim_devicons'],
  \ 'decoration.home': ['vim_startify'],
  \ 'decoration.theme': ['oceanic_next', 'iceberg'],
  \ 'file.explorer': ['nerdtree', 'vim_nerdtree_syntax_highlight', 'vim_devicons'],
  \ 'file.search': ['fzf', 'fzf_vim'],
  \ 'file.config': ['editorconfig_vim'],
  \ 'lang.html': ['html5_vim', 'coc_nvim', 'coc_html', 'coc_css', 'webapi_vim', 'emmet_vim', 'supertab'],
  \ 'lang.php': ['coc_nvim', 'coc_phpls', 'coc_html', 'supertab'],
  \ 'lang.vim': ['coc_nvim', 'coc_vimlsp', 'syntastic', 'supertab'],
  \ 'lang.javascript': ['vim_javascript', 'coc_nvim', 'coc_tsserver', 'coc_json', 'supertab'],
  \ 'lang.jsx': ['vim_javascript', 'vim_jsx', 'vim_json', 'coc_nvim', 'coc_tsserver', 'supertab'],
  \ 'lang.golang': ['coc_nvim', 'coc_go', 'vim_go', 'supertab'],
  \ 'lang.markdown': ['vim_markdown', 'vim_livedown'],
  \ 'system.operation': ['nginx', 'coc_nvim', 'coc_yaml', 'coc_json', 'vim_json']
\ }

let s:custom_modules = {}

let s:custom_packages = {}

function! automemories#modules#get_modules() abort
  return extend(s:modules, s:custom_modules)
endfunction

function! automemories#modules#add_module(name, options) abort
  let s:custom_modules[a:name] = a:options
endfunction

function! automemories#modules#add_package(name, package) abort
  let s:custom_packages[a:name] = a:package
endfunction

function! automemories#modules#get_packages() abort
  return s:custom_packages
endfunction
