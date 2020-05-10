set fish_git_dirty_color red
set fish_git_not_dirty_color green

function git_branch_only
  set -l git_branch (git branch 2>/dev/null | sed -n '/\* /s///p')

  echo -n "$git_branch"
end
