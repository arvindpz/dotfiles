#!/bin/bash

echo "Installing Powerlevel10k"

if [ -f $ZSH_CUSTOM/themes/powerlevel10k/README.md ]; then
  echo "Powerlevel10k already installed"
  exit 0
fi

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

fonts=(
  https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
  https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
  https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
  https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
)

FONT_DIR="$HOME/Desktop/tmp-install-fonts"
mkdir $FONT_DIR

for font in ${fonts[@]}; do
  curl -sL $font --output $FONT_DIR/$(basename $font)
  eval "$(OPEN $FONT_DIR/$(basename $font))"
done

echo "Powerlevel10k installed!!!"
echo "=====> Powerlevel10k Next Steps <======"
echo "You need to configure your terminal to use Powerlevel10k new fonts"
echo "Check out https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#manual-font-installation"
echo "============================="