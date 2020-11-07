echo "install tools ..."
sudo apt-get update
sudo apt-get install git
sudo apt-get install curl
./install_nvm.sh

echo 'Install projects'
GITLAB_ACC=esp_hieu_gitlab:bE1DYspxjzSxaujxzhjn

cd /srv/
git clone https://$GITLAB_ACC@gitlab.com/espxweb/esp-xcloud-vod.git
git clone https://$GITLAB_ACC@gitlab.com/espxng/esp-ng-web.git
git clone https://$GITLAB_ACC@gitlab.com/espxcloud/esp-webservices.git
git clone https://$GITLAB_ACC@gitlab.com/espxmm2/esp-mm2-webapp.git

sudo chmod 700 /srv/dev-tools/ssh
sudo chmod 600 /srv/dev-tools/ssh/*

mkdir wpvip-projects
cd wpvip-projects;

git clone https://hieu:72877c3f1f24d6f0aafe64927607af5573080e4a@github.com/wpcomvip/fb-forwardtogether.git
cd fb-forwardtogether
git config --local user.email 's4.huynh@wearesection.com'
git config --local user.name 's4huynh'

cd ..
git clone https://hieu:72877c3f1f24d6f0aafe64927607af5573080e4a@github.com/wpcomvip/facebook-rethinkcrossborder.git
cd facebook-rethinkcrossborder
git config --local user.email 's4.huynh@wearesection.com'
git config --local user.name 's4huynh'

echo 'Mongo tools';
sudo apt-get update
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt-get install -y mongodb-clients

# sudo apt-get install --reinstall xserver-xorg-input-all
#  sudo apt-get install xserver-xorg-core

#git config --local user.email 'hieu@techvsi.com'
#git config --local user.name 'Karrot'

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
