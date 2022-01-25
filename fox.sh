if [ "$1" == "info" ]; then
  echo "FoxCMD 2.0.1"
fi
if [ "$1" == "install" ]; then
  if [ "$2" == "brew"]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
  if [ "$2" == "spicetify"]; then
    curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
    curl -fsSL https://raw.githubusercontent.com/CharlieS1103/spicetify-marketplace/main/install.sh | sh
  fi
fi
