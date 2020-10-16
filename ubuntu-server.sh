# do not wait while the network comes online during boot - would slow down the boot
systemctl disable systemd-networkd-wait-online.service
systemctl mask systemd-networkd-wait-online.service 

echo "$user ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/90-cloudimg-ubuntu #passwordless sudo

