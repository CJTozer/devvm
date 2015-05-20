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
backup ~/.gitconfig
curl -# -f -L https://raw.githubusercontent.com/CJTozer/env/master/common/.gitconfig -o ~/.gitconfig

# .bashrc
backup ~/.bashrc
curl -# -f -L https://raw.githubusercontent.com/CJTozer/env/master/linux/.bashrc -o ~/.bashrc

# .vimrc
backup ~/.vimrc
curl -# -f -L https://raw.githubusercontent.com/CJTozer/env/master/common/.vimrc -o ~/.vimrc

# .tmux.conf
backup ~/.tmux.conf
curl -# -f -L https://raw.githubusercontent.com/CJTozer/env/master/linux/.tmux.conf -o ~/.tmux.conf

# .tmux.statusline.conf
backup ~/.tmux.conf
curl -# -f -L https://raw.githubusercontent.com/CJTozer/env/master/linux/.tmux.statusline.conf -o ~/.tmux.statusline.conf

# Vim setup: vundle
if [ ! -d ~/.vim/bundle/ ]; then 
  mkdir -p ~/.vim/bundle/
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi