# Create links and extendable files to dot-files
ln -vfs $HOME/dot-files/.gitconfig $HOME/.gitconfig
ln -vfs $HOME/dot-files/.inputrc $HOME/.inputrc
ln -vfs $HOME/dot-files/.sshrc $HOME/.sshrc
ln -vfs $HOME/dot-files/.vimrc $HOME/.vimrc

mkdir -p $HOME/.sshrc.d
for file in $(find $HOME/dot-files/.sshrc.d -type f); do
  ln -vfs ${file} $HOME/.sshrc.d/$(basename ${file})

done

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
  echo "Creating new .alias file"
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
