
# this program automatically create a new file for me for daily update

update() {
  local path="$HOME/my-space/weekly_report/July_2026/"

    mkdir -p "$path" || return 1
    local file_name="$path/July_$(date +%d).md"
    nvim "$file_name"
}


#update() {
#path="$HOME/my-space/weekly_report/July_2026/"
#cd "$path" 
#
#file_name=july_$(date +%d).md
#if [[ -f "$file_name" ]]; then
#    nvim "$file_name"
#else
#    touch "$file_name"
#    nvim "$file_name"
#fi
#}
#
