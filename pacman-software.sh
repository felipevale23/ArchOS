#!/usr/bin/env bash
#-------------------------------------------------------------------------
#
#           .o.                          oooo               .oooooo.    .oooooo..o 
#          .888.                         `888              d8P'  `Y8b  d8P'    `Y8 
#         .8"888.     oooo d8b  .ooooo.   888 .oo.        888      888 Y88bo.      
#        .8' `888.    `888""8P d88' `"Y8  888P"Y88b       888      888  `"Y8888o.  
#       .88ooo8888.    888     888        888   888       888      888      `"Y88b 
#      .8'     `888.   888     888   .o8  888   888       `88b    d88' oo     .d8P 
#     o88o     o8888o d888b    `Y8bod8P' o888o o888o       `Y8bood8P'  8""88888P'   
#                   
#                    Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-lts'             # Long term support kernel

    # TERMINAL UTILITIES --------------------------------------------------

    'bash-completion'       # Tab completion for Bash
    'bc'                    # Precision calculator language
    'bleachbit'             # File deletion utility
    'curl'                  # Remote content retrieval
    'elinks'                # Terminal based web browser
    'feh'                   # Terminal-based image viewer/manipulator
    'file-roller'           # Archive utility
    'gnome-keyring'         # System password storage
    'gtop'                  # System monitoring via terminal
    'gufw'                  # Firewall manager
    'hardinfo'              # Hardware info app
    'htop'                  # Process viewer
    'inxi'                  # System information utility
    'jq'                    # JSON parsing library
    'jshon'                 # JSON parsing library
    'neofetch'              # Shows system info when you launch terminal
    'ntp'                   # Network Time Protocol to set time via network.
    'numlockx'              # Turns on numlock in X11
    'openssh'               # SSH connectivity tools
    'rsync'                 # Remote file sync utility
    'speedtest-cli'         # Internet speed via terminal
    'terminus-font'         # Font package with some bigger fonts for login terminal
    'tlp'                   # Advanced laptop power management
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'xfce4-terminal'        # Terminal emulator
    'zenity'                # Display graphical dialog boxes via shell scripts
    'zip'                   # Zip compression program
    'zsh'                   # ZSH shell
    'zsh-completions'       # Tab completion for ZSH

    # DISK UTILITIES ------------------------------------------------------

    'autofs'                # Auto-mounter
    'exfat-utils'           # Mount exFat drives
    'gparted'               # Disk utility
    'gnome-disks'           # Disk utility
    'ntfs-3g'               # Open source implementation of NTFS file system
    'parted'                # Disk utility

    # GENERAL UTILITIES ---------------------------------------------------

    'catfish'               # Filesystem search
    'conky'                 # System information viewer
    'nemo'                  # Filesystem browser
    'neovim'
    'veracrypt'             # Disc encryption utility
    'variety'               # Wallpaper changer
    'xfburn'                # CD burning application

    # DEVELOPMENT ---------------------------------------------------------

    'atom'                  # Text editor
    'apache'                # Apache web server
    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'electron'              # Cross-platform development using Javascript
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'mariadb'               # Drop-in replacement for MySQL
    'meld'                  # File/directory comparison
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'php'                   # Web application scripting language
    'php-apache'            # Apache PHP driver
    'postfix'               # SMTP mail server
    'python'                # Scripting language
    'qtcreator'             # C++ cross platform IDE
    'qt5-examples'          # Project demos for Qt    

    # WEB TOOLS -----------------------------------------------------------

    'chromium'              # Web browser
    'firefox'               # Web browser
    'filezilla'             # FTP Client
    'flashplugin'           # Flash

    # COMMUNICATIONS ------------------------------------------------------

    'hexchat'               # Multi format chat
    'irssi'                 # Terminal based IIRC

    # MEDIA ---------------------------------------------------------------

    'lollypop'              # Music player
    'simplescreenrecorder'  # Record your screen
    'vlc'                   # Video player
    'xfce4-screenshooter'   # Screen capture.

    # GRAPHICS AND DESIGN -------------------------------------------------

    'gcolor2'               # Colorpicker
    'gimp'                  # GNU Image Manipulation Program
    'inkscape'              # Vector image creation app
    'imagemagick'           # Command line image manipulation tool
    'nomacs'                # Image viewer
    'pngcrush'              # Tools for optimizing PNG images
    'ristretto'             # Multi image viewer

    # PRODUCTIVITY --------------------------------------------------------

    'galculator'            # Gnome calculator
    'hunspell'              # Spellcheck libraries
    'hunspell-en'           # English spellcheck library
    'libreoffice-fresh'     # Libre office with extra features
    'mousepad'              # XFCE simple text editor
    'xpdf'                  # PDF viewer

    # VIRTUALIZATION ------------------------------------------------------

    'virtualbox'
    'virtualbox-host-modules-arch'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
