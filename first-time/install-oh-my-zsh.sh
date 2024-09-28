if [ -f "$DOTFILES/.oh-my-zsh/oh-my-zsh.sh" ]
then
  echo "oh-my-zsh already installed..."
else
  echo 'Installing oh-my-zsh'
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  cp $ZSH_CONFIG/.zshrc $ZSH_CONFIG/.zshrc.post-oh-my-zsh
  cp $ZSH_CONFIG/.zshrc.pre-oh-my-zsh $ZSH_CONFIG/.zshrc
fi

echo "=====> ZSH Next Steps <======"
echo "1. Run 'zsh' to apply changes"
echo "2. Check your backups and remove if they are not needed
      Run 'rm $ZSH_CONFIG/.zshrc.pre-oh-my-zsh $ZSH_CONFIG/.zshrc.post-oh-my-zsh'"
echo "============================="
