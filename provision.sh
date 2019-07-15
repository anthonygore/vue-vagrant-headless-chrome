apt-get update -y && \

## Install Node and NPM
cd /opt && \
wget https://nodejs.org/dist/v10.15.3/node-v10.15.3-linux-x64.tar.xz && \
tar xf node-v10.15.3-linux-x64.tar.xz && \
ln -s -f /opt/node-v10.15.3-linux-x64/bin/node /usr/local/bin/node && \
ln -s -f /opt/node-v10.15.3-linux-x64/bin/node-waf /usr/local/bin/node-waf && \
ln -s -f /opt/node-v10.15.3-linux-x64/bin/npm /usr/local/bin/npm && \

## Install Vue CLI 3
npm install -g @vue/cli@3.5.0 && \
echo "export PATH=\"$PATH:/opt/node-v10.15.3-linux-x64/bin\"" >> /home/vagrant/.bashrc && \
source /home/vagrant/.bashrc && \

## Install Google Chrome
apt install -y openjdk-11-jdk && \
apt-get install -y libdbusmenu-gtk3-4 libappindicator3-1 libgtk-3-0 libxss1 xdg-utils fonts-liberation && \
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp/ && \
dpkg -i /tmp/google-chrome*.deb
