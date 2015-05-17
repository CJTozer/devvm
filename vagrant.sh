# Rust - needs to be done like this (not puppet) for now
curl -f -L https://static.rust-lang.org/rustup.sh -O
chmod +x rustup.sh
./rustup.sh -y # Takes a while - don't do every time!
rm -f rustup.sh

### Function for backing up a file
function backup() {
  if [ -f $1 ]; then
    cp $1 $1.old
  fi
}

### Standard stuff (copying from GitHub mainly to keep it in one place)
# .gitconfig
if [ -f ~/git-completion.bash ]; then
backup ~/.gitconfig
curl -# -f -L https://raw.githubusercontent.com/CJTozer/env/master/common/.gitconfig -o ~/.gitconfig

# .bashrc
backup ~/.bashrc
curl -# -f -L https://raw.githubusercontent.com/CJTozer/env/master/linux/.bashrc -o ~/.bashrc

# .tmux.conf
backup ~/.tmux.conf
curl -# -f -L https://raw.githubusercontent.com/CJTozer/env/master/linux/.tmux.conf -o ~/.tmux.conf

# Vim setup: vundle
if [ ! -d ~/.vim/bundle/ ]; then 
  mkdir -p ~/.vim/bundle/
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi