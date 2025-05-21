#!/bin/bash
#
# Simple script to facilitate connecting to ssh using password

set -euo pipefail

main() {
    if [[ $# -lt 1 ]]; then
        err "No argument provided"
        exit 1
    fi

    if [[ $# -gt 1 ]]; then
        err "Expected only 1 argument"
        exit 1
    fi

    local dir="${1}"
    local credentials_file="${dir}/credentials.txt"
    local password_file="${dir}/password.txt"

    if [[ ! -d "${dir}" ]]; then
        err "Argument input should be a directory"
        exit 1
    fi

    if [[ ! -f "${credentials_file}" ]]; then
        err "Credentials file not found in directory"
        exit 1
    fi

    if [[ ! -f "${password_file}" ]]; then
        err "Password file not found in directory"
        exit 1
    fi

    # Run
    {
        read -r username
        read -r host
    } < "${credentials_file}"

    sshpass -f "${password_file}" ssh "${username}@${host}"
}

err() {
    echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $*" >&2
}

main "$@"
