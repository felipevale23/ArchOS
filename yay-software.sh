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
echo "INSTALLING YAY SOFTWARE"
echo

cd "/tmp"

echo "CLONING: YAY"
git clone "https://aur.archlinux.org/yay.git"

cd "/yay"
echo "makepkg -si"


PKGS=(

    # SYSTEM UTILITIES ----------------------------------------------------

    'menulibre'                 # Menu editor
    'gtkhash'                   # Checksum verifier

    # TERMINAL UTILITIES --------------------------------------------------

    'hyper'                     # Terminal emulator built on Electron

    # UTILITIES -----------------------------------------------------------

    'dropbox'                   # Cloud file storage
    'enpass-bin'                # Password manager
    'slimlock'                  # Screen locker
    'oomox'                     # Theme editor

    # DEVELOPMENT ---------------------------------------------------------
    
    'yarn'
    'npm'
    'rust'
    'asdf-vm'

    # MEDIA ---------------------------------------------------------------

    'spotify'                   # Music player
    'screenkey'                 # Screencast your keypresses
    # 'aftershotpro3'             # Photo editor

    # POST PRODUCTION -----------------------------------------------------

    'peek'                      # GIF animation screen recorder

    # COMMUNICATIONS ------------------------------------------------------

    'skypeforlinux-stable-bin'  # Skype

    # THEMES --------------------------------------------------------------

    'gtk-theme-arc-git'
    'adapta-gtk-theme-git'
    'paper-icon-theme'
    'tango-icon-theme'
    'tango-icon-theme-extras'
    'numix-icon-theme-git'
    'sardi-icons'
)


for PKG in "${PKGS[@]}"; do
    yay -S $PKG
done

echo
echo "Done!"
echo
