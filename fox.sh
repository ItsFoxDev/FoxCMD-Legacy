if [ "$1" == "install" ]; then
  if [ "$2" == "brew"]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
  if [ "$2" == "spicetify"]; then
    curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
    curl -fsSL https://raw.githubusercontent.com/CharlieS1103/spicetify-marketplace/main/install.sh | sh
  fi
fi
if [ "$1" == "update" ]; then
  echo "⬇️ Downloading FoxCMD"
  curl -fsSL "https://raw.githubusercontent.com/ItsFoxDev/FoxCMD/main/fox.sh" -o $HOME/fox.sh
  echo "➡️  Moving files into place"
  mv $HOME/fox.sh /usr/local/bin/fox
  echo "🚦  Marking file as executeable"
  chmod +x /usr/local/bin/fox
  echo "✅ FoxCMD v2 is has been successfully update!"
fi
