#!/bin/bash

# Update package database and upgrade all packages
echo "Updating package database and upgrading all packages..."
sudo pacman -Syu

# Install packages from the official repositories
echo "Installing packages from the official repositories..."
if [ -f repo_packages.txt ]; then
    sudo pacman -S --needed - < repo_packages.txt
else
    echo "repo_packages.txt not found!"
fi

# Install packages from the AUR
echo "Installing packages from the AUR..."
if [ -f aur_packages.txt ]; then
    while read -r package; do
        yay -S --needed $package
    done < aur_packages.txt
else
    echo "aur_packages.txt not found!"
fi

echo "Reinstallation complete!"
