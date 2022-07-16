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
echo "INSTALLING NETWORK COMPONENTS"
echo

PKGS=(
        'wpa_supplicant'            # Key negotiation for WPA wireless networks
        'dialog'                    # Enables shell scripts to trigger dialog boxex
        'networkmanager'            # Network connection manager
        'openvpn'                   # Open VPN support
        'networkmanager-openvpn'    # Open VPN plugin for NM
        'networkmanager-vpnc'       # Open VPN plugin for NM. Probably not needed if networkmanager-openvpn is installed.
        'network-manager-applet'    # System tray icon/utility for network connectivity
        'dhclient'                  # DHCP client
        'libsecret'                 # Library for storing passwords
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo "systemctl enable NetworkManager"

echo
echo "Done!"
echo
