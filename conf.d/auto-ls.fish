if status is-interactive
  function auto-ls --on-variable PWD
    test "$auto_ls_initialized" = "true" || return
    test -z "$auto_ls_command"; and set auto_ls_command "ls -GF"
    eval $auto_ls_command
  end
  function auto-ls-init --on-event fish_prompt
    set --global auto_ls_initialized true
  end
end
