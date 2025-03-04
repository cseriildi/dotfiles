gcfeat() { 
  if [ -z "$1" ]; then 
    GIT_EDITOR="echo '✨ feat: ' && $EDITOR" git commit
  else 
    git commit -m "✨ feat: $*"; 
  fi 
}

gcfix() { 
  if [ -z "$1" ]; then 
    git commit -m "🐛 fix: " 
  else 
    git commit -m "🐛 fix: $*"; 
  fi 
}

gcchore() { 
  if [ -z "$1" ]; then 
    git commit -m "🔧 chore: " 
  else 
    git commit -m "🔧 chore: $*"; 
  fi 
}

gcdocs() { 
  if [ -z "$1" ]; then 
    git commit -m "📝 docs: " 
  else 
    git commit -m "📝 docs: $*"; 
  fi 
}

gcstyle() { 
  if [ -z "$1" ]; then 
    git commit -m "🎨 style: " 
  else 
    git commit -m "🎨 style: $*"; 
  fi 
}

gcrefactor() { 
  if [ -z "$1" ]; then 
    git commit -m "♻️ refactor: " 
  else 
    git commit -m "♻️ refactor: $*"; 
  fi 
}

gcperf() { 
  if [ -z "$1" ]; then 
    git commit -m "⚡ perf: " 
  else 
    git commit -m "⚡ perf: $*"; 
  fi 
}

gctest() { 
  if [ -z "$1" ]; then 
    git commit -m "🧪 test: " 
  else 
    git commit -m "🧪 test: $*"; 
  fi 
}

gcci() { 
  if [ -z "$1" ]; then 
    git commit -m "🔄 ci: " 
  else 
    git commit -m "🔄 ci: $*"; 
  fi 
}

gcrevert() { 
  if [ -z "$1" ]; then 
    git commit -m "⏪ revert: " 
  else 
    git commit -m "⏪ revert: $*"; 
  fi 
}

githelp() {
   echo "\n🚀 Commit Labeling Conventions:\n"
    echo "  ✨ feat     → A new feature"
    echo "  🐛 fix      → A bug fix"
    echo "  🔧 chore    → Maintenance (e.g., build, dependencies)"
    echo "  📝 docs     → Documentation updates"
    echo "  🎨 style    → Code style (formatting, linting, no code changes)"
    echo "  ♻️ refactor → Code restructuring without changing functionality"
    echo "  ⚡ perf     → Performance improvements"
    echo "  🧪 test     → Adding or modifying tests"
    echo "  🔄 ci       → CI/CD configuration changes"
    echo "  ⏪ revert   → Reverting previous commits"

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