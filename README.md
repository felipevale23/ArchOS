# ArchOS
```
$   chmod +x ./init.sh
```
```
$   ./init.sh
```
## Initialize .gitconfig file 
So we can clone this repo...

```
git config --global user.name "your-username" 
git config --global user.email "your-email@gmail.com" 
git config --global credential.helper cache 
git config --global credential.helper 'cache --timeout=31536000
```
```
$   git clone https://github.com/felipevale23/ArchOS.git
```
---
## Run ArchOS files
Run the following scripts:
```
$   ./xorg.sh
$   ./kde-plasma.sh 
$   ./network.sh 
$   ./bluetooth.sh 
$   ./audio.sh 
$   ./printers.sh 
$   ./pacman-software.sh
$   ./yay-software.sh
$   ./setup.sh
$   ./theme.sh
$   ./plugins.sh
```
## Reboot
```
$   reboot
```
## Initialize Xorg:
At the terminal, run:
```
$   xinit
```
On subsequent logins use:
```
$   startx
```
Done!
