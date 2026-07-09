## accept one argument at a time
# cpp() {
#     [[ -z "$1" ]] && return 1
#     local exec="${1%.*}"
#     # Compile -> Run -> Delete ONLY the executable
#     g++ "$1" -o "$exec" && ./"$exec" && rm "$exec"
# }

## accept multiple argument at a time
cpp() {
    [[ -z "$1" ]] && return 1
    # Use the last argument's name for the executable, or default to 'app'
    local exec="app" 
    
    # Compile all provided files ($@), run, then delete only the executable
    g++ "$@" -o "$exec" && ./"$exec" && rm "$exec"
}
