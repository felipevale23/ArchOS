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
echo "INSTALLING PLUGINS COMPONENTS"
echo

cd "${HOME}"
mkdir .zsh
echo "git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions"

echo "'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc" 

PKGS=(
            'bat'               # Alternative for cat
            'exa'               # Alternative for ls
            'ytop'              # CPU mananger
            'grex'              # ALSA configuration for pulse audio
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    cargo install "$PKG" --noconfirm --needed
done

#adding configs on .zshrc
echo "'alias ls='exa --grid --color auto --icons --sort=type'' >> ~/.zshrc" 
echo "'alias ll='exa --long --color always --icons --sort=type'' >> ~/.zshrc" 
echo "'alias la='exa --grid --all --color auto --icons --sort=type''>> ~/.zshrc" 
echo "'alias lla='exa --long --all --color auto --icons --sort=type'' >> ~/.zshrc" 

echo
echo "Done!"
echo
