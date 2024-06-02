FROM archlinux

# Set environment variables
ENV USER_NAME=erg

RUN pacman -Syyu android-tools android-udev git-lfs fontconfig ttf-droid ccache repo xorg-server jdk8-openjdk openssh libxcrypt-compat perl git gnupg flex bison gperf zip unzip sdl base-devel squashfs-tools ncurses libpng zlib libusb libusb-compat readline python3 python linux-headers nano wget axel rsync --noconfirm 

# Create a non-root user
RUN useradd -m -s /bin/bash $USER_NAME

# Set password for the user (change 'password' to your desired password)
RUN echo "$USER_NAME:password" | chpasswd

# Allow the user to execute commands with sudo without a password
RUN echo "$USER_NAME ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Switch to the non-root user
USER $USER_NAME

WORKDIR /home/$USER_NAME

CMD ["/bin/bash"]
