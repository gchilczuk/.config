# git
alias gs="git status"
alias push="git push"
alias pull="git pull"

# pytest
alias ptest="pytest -vvx; py3clean ."
alias ptest_and_commit_or_reset="(pytest -vvx && git commit -am \"test passed\") || git reset --hard"

# other
alias srvtu="echo $(hostname -I | cut -d ' ' -f 1); sudo python3 -m http.server --bind 0.0.0.0 80"
