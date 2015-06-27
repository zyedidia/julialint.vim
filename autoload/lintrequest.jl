cmd = "bash"
script = dirname(Base.source_path()) * "/lintrequest.sh"
arg = ARGS[1]
dir = dirname(ARGS[1])
while !isfile("$dir/.julialint") && !isempty(dir)
	dir = dir[1:end-length(basename(dir))-1]
end
if isfile("$dir/.julialint")
	arg = "$dir/$(chomp(readall("$dir/.julialint")))"
end
run(`$cmd $script $arg`)
