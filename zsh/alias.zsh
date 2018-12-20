# git
alias gs="git status"
alias push="git push"
alias pull="git pull"

# pytest
alias ptest="pytest -vvx; py3clean ."
alias ptest_and_commit_or_reset="(pytest -vvx && git commit -am \"test passed\") || git reset --hard"
