#!/usr/bin/env bash

echo
echo "INSTALLING PLASMA"
echo

PKGS=(
        'plasma-desktop'        # KDE-Plasma Desktop
        'konsole'               # Terminal
        'firefox'               # web browser
        'sddm'                  # All the extras
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "systemctl enable sddm"
echo

echo
echo "Done!"
echo
