#!/bin/bash
## Just a fun array process ##
# Make a file called food.txt in the same dir and fill some food names

declare -a options
work_dir=$(dirname "$(readlink -f "${0}")")
places="${work_dir}/places.txt"
readonly FILE_NOT_FOUND=150
readonly NO_OPTIONS_LEFT=180

terminate(){
    local -r msg="${1}"
    local -r code="${2:-150}"
    echo -e "Error code: ${code}\n${msg}" >&2
    exit "120"
}

if [[ ! -f "${places}" ]]; then
    terminate "Error: $(basename "$places") doesn't exist" $FILE_NOT_FOUND
fi

function fill_array(){
    mapfile -t options < "${places}"
    if [[ "${#options[@]}" -eq 0 ]]; then
        terminate "Error: No options left in $(basename "$places")" $NO_OPTIONS_LEFT
    fi
}

function update_opt(){
    if [[ "${#options[@]}" -eq 0 ]]; then
        : > "${places}"
    else
        printf "%s\n" "${options[@]}" > "${places}"
    fi
}

fill_array
index=$((RANDOM % "${#options[@]}"))
echo ${options[$index]}
unset "options[${index}]"
update_opt
