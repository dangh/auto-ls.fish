if status is-interactive
  function auto-ls --on-variable PWD
    set --query auto_ls_initialized || return
    set --query auto_ls_command || set --local auto_ls_command 'ls -GF'
    $auto_ls_command
  end
  function auto-ls-init --on-event fish_prompt
    set --global auto_ls_initialized
  end
end
