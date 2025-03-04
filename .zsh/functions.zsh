FEAT="✨ feat"
FIX="🐛 fix"
CHORE="🔧 chore"
DOCS="📝 docs"
STYLE="🎨 style"
REFACTOR="♻️ refactor"
PERF="⚡ perf"
TEST="🧪 test"
CI="🔄 ci"
REVERT="⏪ revert"

gcfeat() { 
  if [ -z "$1" ]; then 
    echo "Usage: gcfeat <commit_message>";
  else 
    git commit -m "$FEAT: $*"; 
  fi 
}

gcfix() { 
  if [ -z "$1" ]; then 
    echo "Usage: gcfix <commit_message>";
  else 
    git commit -m "$FIX: $*"; 
  fi 
}

gcchore() { 
  if [ -z "$1" ]; then 
    echo "Usage: gcchore <commit_message>";
  else 
    git commit -m "$CHORE: $*"; 
  fi 
}

gcdocs() { 
  if [ -z "$1" ]; then 
    echo "Usage: gcdocs <commit_message>";
  else 
    git commit -m "$DOCS: $*"; 
  fi 
}

gcstyle() { 
  if [ -z "$1" ]; then 
    echo "Usage: gcstyle <commit_message>";
  else 
    git commit -m "$STYLE: $*"; 
  fi 
}

gcrefactor() { 
  if [ -z "$1" ]; then 
    echo "Usage: gcrefactor <commit_message>";
  else 
    git commit -m "$REFACTOR: $*"; 
  fi 
}

gcperf() { 
  if [ -z "$1" ]; then 
    echo "Usage: gcperf <commit_message>";
  else 
    git commit -m "$PERF: $*"; 
  fi 
}

gctest() { 
  if [ -z "$1" ]; then 
    echo "Usage: gctest <commit_message>";
  else 
    git commit -m "$TEST: $*"; 
  fi 
}

gcci() { 
  if [ -z "$1" ]; then 
    echo "Usage: gcci <commit_message>";
  else 
    git commit -m "$CI: $*"; 
  fi 
}

gcrevert() { 
  if [ -z "$1" ]; then 
    echo "Usage: gcrevert <commit_message>";
  else 
    git commit -m "$REVERT: $*"; 
  fi 
}

githelp() {
  echo "\n🚀 Commit Labeling Conventions:\n"
  echo "  $FEAT     → A new feature"
  echo "  $FIX      → A bug fix"
  echo "  $CHORE    → Maintenance (e.g., build, dependencies)"
  echo "  $DOCS     → Documentation updates"
  echo "  $STYLE    → Code style (formatting, linting, no code changes)"
  echo "  $REFACTOR → Code restructuring without changing functionality"
  echo "  $PERF     → Performance improvements"
  echo "  $TEST     → Adding or modifying tests"
  echo "  $CI       → CI/CD configuration changes"
  echo "  $REVERT   → Reverting previous commits"

  echo -e "\nViewing Logs"
  echo -e "  git log --oneline → Show commit history in one line"
  echo -e "  git log --graph --oneline --decorate --all → Pretty log"

  echo -e "\nViewing Changes"
  echo -e "  git diff          → Show unstaged changes"
  echo -e "  git diff --staged → Show staged changes"
  echo -e "  git add -p        → Interactively stage changes"

  echo -e "\nAmending & Merging"
  echo -e "  git commit --amend → Edit the last commit"
  echo -e "  git merge <branch> → Merge a branch into the current one"
  echo -e "  git rebase <branch> → Reapply commits on top of another base"
  echo -e "  git rebase -i HEAD~<num> → Interactively rebase the last <num> commits"

  echo -e "\nStashing & Saving Work"
  echo -e "  git stash         → Save uncommitted changes temporarily"
  echo -e "  git stash apply   → Apply the latest stash"
  echo -e "  git stash list    → List all saved stashes"
  echo -e "  git stash drop    → Delete a specific stash"

  echo -e "\nResetting Changes"
  echo -e "  git reset --soft <commit> → Undo the last commit but keep changes staged"
  echo -e "  git reset --mixed <commit> → Undo the last commit but keep changes in the working directory"
  echo -e "  git reset --hard <commit> → Undo the last commit and discard changes"
  echo -e "  git reset <file> → Unstage a file from the staging area"

  echo -e "\n  git cherry-pick <commit_hash> → Apply a specific commit to current branch"
}
