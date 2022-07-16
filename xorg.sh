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
echo "INSTALLING XORG"
echo

PKGS=(
        'xorg-server'           # XOrg server
        'xorg-apps'             # XOrg apps group
        'xorg-xinit'            # XOrg init
        'xf86-video-intel'      # 2D/3D video driver
        'nvidia'                # nvidia driver
        'nvidia-settings'       # nvidia config
        'mesa'                  # Open source version of OpenGL
        'xf86-input-libinput'   # Trackpad driver for Dell XPS
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
