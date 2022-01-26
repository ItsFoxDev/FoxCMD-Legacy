echo
echo "ℹ️ This will install FoxCMD to your computer."
sleep 0.03
echo "You may uninstall it at any time"
sleep 0.03
echo 
sleep 0.03
echo "The installer will only affect the following directory"
sleep 0.03
echo "➡️  /usr/local/bin/foxcmd"
sleep 0.03
read -p "Press enter to continue or any other key to abort: " confirm
if [ "$confirm" == "" ]; then
  echo
  sleep 0.03
  echo "🦊 Starting FoxCMD installation..."
  sleep 0.3
  if [ ! -d "/usr/local/bin" ]; then 
    echo "🔑 You may need to enter your password"
    sudo mkdir /usr/local/bin
  fi
  echo "⬇️ Downloading FoxCMD..."
  curl -fsSL "https://raw.githubusercontent.com/ItsFoxDev/FoxCMD-Legacy/main/foxcmd.sh" -o $HOME/foxcmd-legacy.sh
  echo "➡️  Moving files into place"
  mv $HOME/foxcmd-legacy.sh /usr/local/bin/foxcmd
  echo "🚦  Marking file as executeable"
  chmod +x /usr/local/bin/foxcmd
  echo "✅ FoxCMD legacy is successfully installed!"
  sleep 0.03
  echo "🏁 To run FoxCMD legacy, run \"foxcmd\""
else
  echo "❌ Install was cancelled."
  exit 0
fi
