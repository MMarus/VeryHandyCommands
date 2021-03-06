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

# install-docker on Win & the Ubuntu in wsl
https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers


# developement env - .net core sdk on ubuntu
https://docs.microsoft.com/en-us/dotnet/core/install/linux-ubuntu
