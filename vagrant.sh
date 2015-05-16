# Rust - needs to be done like this (not puppet) for now
curl -f -L https://static.rust-lang.org/rustup.sh -O
chmod +x rustup.sh
./rustup.sh -y # Takes a while - don't do every time!
rm -f rustup.sh

### Standard stuff (copying from GitHub mainly to keep it in one place)
# .gitconfig
cp ~/.gitconfig ~/.gitconfig_old
curl -# -f -L https://raw.githubusercontent.com/CJTozer/env/master/common/.gitconfig -o ~/.gitconfig

# .bashrc
cp ~/.bashrc ~/.bashrc_old
curl -# -f -L https://raw.githubusercontent.com/CJTozer/env/master/linux/.bashrc -o ~/.bashrc

# .tmux.conf
cp ~/.tmux.conf ~/.tmux.conf_old
curl -# -f -L https://raw.githubusercontent.com/CJTozer/env/master/linux/.tmux.conf -o ~/.tmux.conf

# Vim setup: vundle
mkdir -p ~/.vim/bundle/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim