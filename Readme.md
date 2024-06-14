
# Package List and Reinstallation Script

This repository contains scripts to list installed packages on an Arch Linux system, separated into those installed from the official repositories and those installed from the AUR (Arch User Repository). It also includes a script to reinstall these packages on a new OS installation.

## Files

- `generate_package_list.sh`: Script to list installed packages and create reinstallation script.
- `repo_packages.txt`: List of packages installed from the official repositories.
- `aur_packages.txt`: List of packages installed from the AUR.
- `reinstall_packages.sh`: Script to reinstall packages on a new OS installation.

## Usage

### Step 1: Generate Package Lists and Reinstallation Script

1. **Save the Script:**
   Save the `generate_package_list.sh` script to your desired location.

2. **Make the Script Executable:**
   ```bash
   chmod +x generate_package_list.sh
   ```

3. **Run the Script:**
   ```bash
   ./generate_package_list.sh
   ```

   This will generate two files: `repo_packages.txt` and `aur_packages.txt`, as well as a reinstallation script: `reinstall_packages.sh`.

### Step 2: Reinstall Packages on a New OS Installation

1. **Copy the Generated Files:**
   Copy `repo_packages.txt`, `aur_packages.txt`, and `reinstall_packages.sh` to your new system.

2. **Make the Reinstallation Script Executable:**
   ```bash
   chmod +x reinstall_packages.sh
   ```

3. **Run the Reinstallation Script:**
   ```bash
   ./reinstall_packages.sh
   ```

   This will update the package database, upgrade all packages, and then install the packages listed in `repo_packages.txt` and `aur_packages.txt`.

