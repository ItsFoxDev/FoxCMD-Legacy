echo 🦊 Starting FoxCMD
sleep 0.3
echo ❓ Run "help" to see commands or exit to leave
while [ 1 ]; do
  read -p '🦊 → ' command
  if [ "$command" == "clean" ]; then
    echo 🗑 Cleaning Caches
    rm -rf ~/Library/Caches/*
    echo 🗑 Cleaning logs
    rm -rf ~/Library/logs/*
    echo 🗑 Clearing caches in user folder
    rm -rf ~/.zsh_history
    rm -rf ~/.zsh_sessions
    rm -rf ~/.gradle/caches
    rm -rf ~/.npm
    rm -rf ~/.dartServer
    rm -rf ~/.pub-cache
    sudo rm -f -rf /System/Library/Caches/*
    sudo rm -f -rf ~/.Trash/*
    sudo rm -f -rf ~/Library/Containers/com.apple.mail/Data/Library/Logs/Mail/*
    if [ -d ~/Library/Application\ Support/minecraft ];then
    	echo '⛏ Clearing Minecraft Cache and Log Files...'
    	rm -rfv ~/Library/Application\ Support/minecraft/logs &>/dev/null
    	rm -rfv ~/Library/Application\ Support/minecraft/crash-reports &>/dev/null
    	rm -rfv ~/Library/Application\ Support/minecraft/webcache &>/dev/null
    	rm -rfv ~/Library/Application\ Support/minecraft/webcache2 &>/dev/null
    	rm -rfv ~/Library/Application\ Support/minecraft/crash-reports &>/dev/null
    	rm -rfv ~/Library/Application\ Support/minecraft/*.log &>/dev/null
	    rm -rfv ~/Library/Application\    Support/minecraft/launcher_cef_log.txt &>/dev/
    	rm -rfv ~/Library/Application\    Support/minecraft/.mixin.out &>/dev/
    fi
    if [ -d ~/.lunarclient ]; then
    	echo '🌘 Deleting Lunar Client logs and caches...'
    	rm -rfv ~/.lunarclient/game-cache &>/dev/null
    	rm -rfv ~/.lunarclient/launcher-cache &>/dev/null
    	rm -rfv ~/.lunarclient/logs &>/dev/null
	    rm -rfv ~/.lunarclient/offline/*/logs &>/dev/null
	    rm -rfv ~/.lunarclient/offline/files/*/logs &   >/dev/null
    fi
    if [ -d /opt/homebrew ]; then
    	echo '🍺 Updating Homebrew Recipes...'
    	brew update &>/dev/null
    	echo '🍺 Upgrading and removing outdated formulae...'
    	brew upgrade &>/dev/null
    	echo '🍺 Cleaning up Homebrew Cache...'
    	brew cleanup -s &>/dev/null
	    rm -rfv "$(brew --cache)"
    	brew tap --repair &>/dev/null
    fi
  fi
  if [ "$command" == "help" ]; then
    del=0.02
    echo
    sleep $del
    echo 📄 List of commands:
    sleep $del
    echo
    sleep $del
    echo "🗑  clean    • Cleans your mac's cache."
    sleep $del
    echo "❓ help     • Shows this list of commands"
    sleep $del
    echo "⬇️  install  • Installs a package"
    sleep $del
    echo "❌ remove   • Removes a package"
    sleep $del
    echo "♻️  clear    • Clears the terminal history"
    sleep $del
    echo "⬜️ addspace • Adds a spacer to your mac's dock"
    sleep $del
    echo "😎 hack     • Makes it look like you are hacking"
    sleep $del
    echo "⬆️  update   • Updates FoxCMD"
    sleep $del
    echo "❌ exit     • Exits FoxCMD"
  fi
  if [ "$command" == "install brew" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
  if [ "$command" == "remove brew" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"
  fi
  if [ "$command" == "exit" ]; then
    echo "🦊 Exited FoxCMD."
    exit 0
  fi
  if [ "$command" == "clear" ]; then
    clear
    echo 🦊 Starting FoxCMD
    echo ❓ Run "help" to see commands or exit to leave
  fi
  if [ "$command" == "update" ]; then
    echo ⬆️ Updating FoxCMD
    curl -fsSL "https://raw.githubusercontent.com/ItsFoxDev/FoxCMD/main/main.sh" -o $HOME/foxcmd.sh
    mv $HOME/foxcmd.sh /usr/local/bin/foxcmd
    chmod +x /usr/local/bin/foxcmd
    echo "⬆️ Updated FoxCMD"
    sleep $del
    echo "Please run \"Exit\" then \"foxcmd\" to apply the update."
  fi
  if [ "$command" == "addspace" ]; then
    defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
    killall Dock
  fi
  if [ "$command" == "hack" ]; then
    echo "⚠️  To exit \"Hacks\", press CTRL+C (Even on mac)"
    sleep 0.01
    echo "Press enter to continue"
    read empty
    while [ 1 ]; do
      fakeip="$((10 + $RANDOM % 99)).$((100 + $RANDOM % 999)).$((100 + $RANDOM % 999)).$((10 + $RANDOM % 99))"
      sleep 0.03
      iserror="$((1 + $RANDOM % 10))"
      if [ "$iserror" == 1 ]; then
        echo "❌ Unable to connect to IP: $fakeip"
      else
        echo "✅ Fetched IP $fakeip!"
      fi
    done
  fi
done
