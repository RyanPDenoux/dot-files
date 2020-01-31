# Create links and extendable files to dot-files
cd $HOME

ln -vfs dot-files/.gitconfig .gitconfig
ln -vfs dot-files/.inputrc .inputrc
ln -vfs dot-files/.vimrc .vimrc

if [ ! -s $HOME/.env ]; then
  echo "Creating new .env file"
  cat > $HOME/.env-test << EOF
# Base .env
source $HOME/dot-files/.env

# Place specific environment variables below
EOF

else
  echo ".env file already exists"
fi

if [ ! -s $HOME/.alias ]; then
  echo "Creating new .bashrc file"
  cat > $HOME/.alias << EOF
# Base .bashrc
source $HOME/dot-files/.alias

# Place specific aliases below
EOF

else
  echo ".alias file already exists"
fi

if [ ! -s $HOME/.bashrc ]; then
  echo "Creating new .bashrc file"
  cat > $HOME/.bashrc << EOF
# Base .bashrc
source $HOME/dot-files/.bashrc

# Place specific configurations below
EOF

else
  echo ".bashrc file already exists"
fi