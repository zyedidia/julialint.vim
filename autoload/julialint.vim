let s:pluginpath = expand('<sfile>:p:h')
func! julialint#StartServer()
	if exists(":Neomake")
		call system("julia " . s:pluginpath . "/lintserver.jl >/dev/null 2>&1 &")
	else
		echo "Neomake is not installed. Julialint cannot work."
	endif
endfunction

func! julialint#EnableLinter()
	if exists(":Neomake")
		let g:neomake_julia_julia_maker = {
			\ 'args': [s:pluginpath . '/lintrequest.jl'],
			\ 'errorformat': 
				\ '%f:%l [%s] %tARN %m,'.
				\ '%f:%l [%s] %tRROR %m,'.
				\ '%f:%l [%s] %tNFO %m,'.
				\ '%f:%l [%s] %m',
			\ }
		let g:neomake_julia_enabled_makers = ['julia']
	endif
endfunction
