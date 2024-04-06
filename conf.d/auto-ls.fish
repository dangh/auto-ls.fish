status is-interactive || exit

function auto-ls -v PWD
    set -q _auto_ls_enabled && begin
        set -q auto_ls_limit || set -l auto_ls_limit 50
        set -l count (count *)
        test $count -le $auto_ls_limit || begin
            echo Too many files to list! \((set_color yellow)$count(set_color normal) files\)
            return
        end
        test -n "$auto_ls_command" || set -l auto_ls_command 'ls -GF'
        eval $auto_ls_command
    end
    set -e _auto_ls_enabled
end

function _enable_auto_ls -e fish_prompt
    set -g _auto_ls_enabled
end
