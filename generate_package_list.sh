#!/bin/bash

# List installed packages from the official repositories
echo "Listing installed packages from the official repositories..."
pacman -Qqen > repo_packages.txt

# List installed packages from the AUR
echo "Listing installed packages from the AUR..."
pacman -Qqem > aur_packages.txt

echo "Package lists created: repo_packages.txt and aur_packages.txt"

# Reinstallation script section
echo "Creating reinstallation script..."

cat <<EOL > reinstall_packages.sh
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
        yay -S --needed \$package
    done < aur_packages.txt
else
    echo "aur_packages.txt not found!"
fi

echo "Reinstallation complete!"
EOL

# Make the reinstallation script executable
chmod +x reinstall_packages.sh

echo "Reinstallation script created: reinstall_packages.sh"
