# installing VIM-IDE
cwd=$(pwd)
# Using Ubuntu --installing nodejs
curl -fsSL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt-get install clang  python3  lua5.3 liblua5.3 maven

sudo pip3 install jedi

sudo npm install -g eslint

sudo pip3 install flake8

sudo apt install vim-nox

git clone https://github.com/Shadowsith/TheVimIDE.git

cd TheVimIDE 
./install.sh

#vim ready here

# making ready android app development environment

cd $cwd

mkdir sdk
cd sdk 
wget  https://dl.google.com/android/repository/commandlinetools-linux-7302050_latest.zip

unzip commandlinetools-linux-7302050_latest.zip

########edit this with folder name for sdkmanager##################################
cd $cwd
cd sdk/cmd*/bin
yes | ./sdkmanager --licenses --sdk_root=/root/sdk

cd $cwd
mkdir android_apps
cd android_apps
git clone https://github.com/codepath/intro_android_demo.git
cd intro_android_demo
#echo "sdk.dir=/root/sdk" > local.properties

