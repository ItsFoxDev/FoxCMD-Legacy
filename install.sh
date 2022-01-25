echo "🦊 Starting FoxCMD installation..."
sleep 0.3
echo "⬇️ Downloading FoxCMD..."
curl -fsSL "https://raw.githubusercontent.com/ItsFoxDev/FoxCMD/main/main.sh" -o $HOME/foxcmd.sh
echo "➡️ Moving files into place"
mv $HOME/foxcmd.sh /usr/local/bin/foxcmd
echo "🚦 Marking file as executeable"
chmod +x /usr/local/bin/foxcmd
echo "✅ FoxCMD is successfully installed!"
sleep 0.03
echo "🏁 To run FoxCMD, run \"FoxCMD\""