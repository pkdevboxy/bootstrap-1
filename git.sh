export BOOTSTRAP_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp "${BOOTSTRAP_DIR}/init/git/gitconfig" ~/.gitconfig
cp "${BOOTSTRAP_DIR}/init/git/gitignore" ~/.gitignore