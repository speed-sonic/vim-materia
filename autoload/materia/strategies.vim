"=============================================================================
" FILE: strategies.vim
" AUTHOR:  Alex Layton <omytty.alex@126.com>
" License: MIT license
"=============================================================================

let s:app_system = materia#service#get('system')

" Select gui font by system informations.
" https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
function! materia#strategies#guifont()
  let name = has('nvim') ? 'SauceCodePro\ Nerd\ Font\ Mono' : 'SauceCodePro_Nerd_Font_Mono'
  let size = s:app_system.is_windows ? ':h13' : ':h14'
  return name . size
endfunction
