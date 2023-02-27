# Through browser (for now)
# - Install chrome
# - Install code
# - Install intellij
#       Tools > Create desktop entry
# - Install docker: https://docs.docker.com/engine/install/ubuntu/
#       sudo vigr -> docker:x:997:nicolas.tallar

# Directories
cd ~/Documents
mkdir personal projects

# My setup
cd ~/Documents/personal
git clone git@github.com:ntallar/my-setup.git

# Zsh
# If not detected as the default terminal then use: https://askubuntu.com/questions/1180222/how-to-set-zsh-as-default-for-gnome-terminal-only
sudo apt-get install zsh git htop
# install oh-my-zsh (I usually use re5et as the theme)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Spotify (from: https://www.spotify.com/us/download/linux/)
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# Sbt (from: https://www.scala-sbt.org/download.html)
echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | sudo tee /etc/apt/sources.list.d/sbt.list
echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | sudo tee /etc/apt/sources.list.d/sbt_old.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add
sudo apt-get update
sudo apt-get install sbt

# Sdk man
curl -s "https://get.sdkman.io" | bash
sdk install java 11.0.13-zulu
