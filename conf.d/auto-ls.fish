status is-interactive || exit

function auto-ls --on-event fish_prompt
  function auto-ls --on-variable PWD
    test -n "$auto_ls_command" || set --local auto_ls_command 'ls -GF'
    eval $auto_ls_command
  end
end
