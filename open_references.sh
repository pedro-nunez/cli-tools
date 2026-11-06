# Shared implementation for the reference commands.
open_reference() {
    local folder="$1"
    shift

    if (($# != 1)) || [[ -z "$1" ]]; then
        printf 'Usage: %s <reference-prefix>\n' "${0##*/}" >&2
        return 2
    fi

    local directory="${LITERATURE_DIR:-${HOME}/Literature}/$folder"
    local prefix="$1"
    local candidate
    local -a matches=()

    if [[ ! -d "$directory" ]]; then
        printf 'Reference directory not found: %s\n' "$directory" >&2
        return 1
    fi

    for candidate in "$directory"/"$prefix"*; do
        [[ -f "$candidate" ]] && matches+=("$candidate")
    done

    case "${#matches[@]}" in
        0)
            printf 'No reference matched: %s\n' "$prefix" >&2
            return 1
            ;;
        1)
            if [[ "$(uname -s)" == "Darwin" ]]; then
                open "${matches[0]}"
            else
                xdg-open "${matches[0]}"
            fi
            ;;
        *)
            printf 'Several references matched:\n'
            for candidate in "${matches[@]}"; do
                printf '  %s\n' "${candidate##*/}"
            done
            return 1
            ;;
    esac
}
