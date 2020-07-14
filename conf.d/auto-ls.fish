if status is-interactive
  function auto-ls --on-variable PWD
    test -z "$auto_ls_command"; and set auto_ls_command "ls -GF"
    eval $auto_ls_command
  end
end
