#!/usr/bin/env bash

main() {
    local number=$1
    local result=""

    (( number % 3 == 0)) && result+="Pling"
    (( number % 5 == 0)) && result+="Plang"
    (( number % 7 == 0)) && result+="Plong"

    [[ -z "$result" ]] && result="$number"

    echo "$result"
}

main "@"