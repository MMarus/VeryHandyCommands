# do not wait while the network comes online during boot - would slow down the boot
systemctl disable systemd-networkd-wait-online.service
systemctl mask systemd-networkd-wait-online.service 

echo "$user ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/90-cloudimg-ubuntu #passwordless sudo

#install docker https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository
sudo apt-get update -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
