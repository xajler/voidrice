# Install Void Linux

Update Void Linux

    sudo xbps-install -Syu

Install elementary software

    sudo xbps-install -S git vim
    sudo xbps-install -S bash-completion neofetch
    sudo xbps-install -S tlp powertop hardinfo htop lm_sensors fzf


Crete user's folders

    mkdir ~/Videos ~/Documents ~/Downloads ~/Pictures ~/Music ~/src

Create src folder and clone dotfiles

    cd ~/src
    git clone https://github.com/xajler/voidrice.git


Create /mnt/usb dir and mount to it

    sudo mkdir /mnt/usb
    sudo mount /dev/sdb1 /mnt/usb

Copy .ssh and chmod-it

    cp -rf /mnt/usb/.ssh/ ~/
    cd ~/.ssh/
    rm known_hosts 
    chmod 600 id_rsa
    chmod 644 id_rsa.pub

Copy .bash and .vim

    cp -rf src/voidrice/.bashrc src/voidrice/.vim* src/voidrice/.Xdefaults ~/

Install Vim Plugs (inside vim)

    :PlugInstall

Install sound

    sudo xbps-install alsa-utils alsa-plugins alsa-lib alsa-firmware 

Install xorg 

    sudo xbps-install -S xorg-server xorg-apps xorg-minimal xinit xterm
    sudo xbps-install -S xf86-video-intel xf86-input-libinput

Install apps
 
    sudo xbps-install rxvt-unicode ranger qutebrowser calcurse mpd mpc mpv compton htop
    sudo xbps-install youtube-dl ffmpeg feh rofi arandr scrot mirage r tmux urxvt-perls  lxappearance xautolock mupdf cmatrix openvpn terminus-font 
    sudo xbps-install youtube-dl ffmpeg feh rofi arandr scrot mirage tmux urxvt-perls  lxappearance xautolock mupdf cmatrix openvpn terminus-font 
    sudo xbps-install font-unifont-bdf font-awesome
    sudo xbps-install i3-gaps i3status i3lock i3blocks 
    sudo xbps-install acpi playerctl sysstat 
    nf
    sudo xbps-install polybar
    sudo xbps-install xcalib
    sudo xbps-install unclutter

Copy config dotfiles from git

    mkdir ~/.config
    cd ~/src/voidrice/
    cp -rf .ncmpcpp .xinitrc .calcurse ~/
    cd ~/src/voidrice/.config/
    cp -rf feh i3 icc moc mpd mpv neofetch polybar qutebrowser ranger compton.conf wall.png user-dirs.dirs ~/.config

Add URxvt font resize

    cd ~/src
    git clone https://github.com/simmel/urxvt-resize-font
    sudo cp ~/src/urxvt-resize-font/resize-font /usr/lib/urxvt/perl
    
Link and start services

    la /var/service
    sudo ln -s /etc/sv/mpd /var/service
    sudo sv status mpd
    sudo sv up mpd

