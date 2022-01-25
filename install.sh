echo "🦊 Starting FoxCMD installation..."
sleep 0.3
echo "Downloading FoxCMD..."
BIN_LOCATION="/usr/local/bin"
SOURCE=https://raw.githubusercontent.com/ItsFoxDev/FoxCMD/main/main.sh
curl -fsSL ${SOURCE} -o $HOME/foxcmd.sh
mv $HOME/foxcmd.sh $BIN_LOCATION/foxcmd
chmod +x $BIN_LOCATION/foxcmd