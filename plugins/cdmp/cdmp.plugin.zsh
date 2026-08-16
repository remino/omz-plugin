function cdmp() {
  local directory exit_code

  directory="$(mkprj "$@")"
  exit_code=$?

  if (( exit_code != 0 )); then
    return "$exit_code"
  fi

  if [[ -z "$directory" ]]; then
    print -u2 -- 'cdmp: mkprj did not return a directory'
    return 1
  fi

  if [[ ! -d "$directory" ]]; then
    print -u2 -- "cdmp: mkprj returned a non-directory: $directory"
    return 1
  fi

  builtin cd -- "$directory"
}
