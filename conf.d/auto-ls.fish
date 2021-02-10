status is-interactive || exit

function auto-ls --on-event fish_prompt
  function auto-ls --on-variable PWD
    set --query auto_ls_limit || set --local auto_ls_limit 30
    set --local count (count *)
    test $count -le $auto_ls_limit || begin
      echo Too many files to list! \((set_color yellow)$count(set_color normal) files\)
      return
    end
    test -n "$auto_ls_command" || set --local auto_ls_command 'ls -GF'
    eval $auto_ls_command
  end
end
