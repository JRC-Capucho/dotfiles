yay -S --needed docker docker-compose --noconfirm

sudo usermod -aG docker ${USER}

sudo systemctl restart docker.service

sudo systemctl enable docker.service

