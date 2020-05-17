function fish_prompt
  set -l last_status $status

  set_color $fish_color_cwd
  printf (prompt_pwd)

  if not test $last_status -eq 0
    set_color $fish_color_error
    printf ' ['
    echo -n $last_status
    printf ']'
  end

  set_color yellow
  echo -n ' > '

  set_color normal
end