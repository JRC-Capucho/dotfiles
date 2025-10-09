# Atualizar sistema
sudo pacman -Syu --noconfirm

# Instalar drivers NVIDIA
sudo pacman -S --noconfirm nvidia nvidia-utils nvidia-settings lib32-nvidia-utils

# Instalar Vulkan para NVIDIA
sudo pacman -S --noconfirm vulkan-icd-loader lib32-vulkan-icd-loader

# Instalar Steam
sudo pacman -S --noconfirm steam

# Instalar ProtonUp-Qt (para Proton GE)
sudo pacman -S --noconfirm protonup-qt

# Instalar MangoHud
sudo pacman -S --noconfirm mangohud lib32-mangohud

# Instalar GameMode
sudo pacman -S --noconfirm gamemode lib32-gamemode

# Instalar Lutris
# sudo pacman -S --noconfirm lutris

# Instalar Wine + DXVK + VKD3D
# sudo pacman -S --noconfirm wine wine-gecko wine-mono winetricks dxvk-bin vkd3d

# Instalar Heroic Games Launcher
# sudo pacman -S --noconfirm heroic-games-launcher-bin

# Instalar suporte para controles (joysticks)
sudo pacman -S --noconfirm game-devices-udev

