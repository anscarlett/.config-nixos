
# Dotfiles with Nix

Use Nix to manage dotfiles and terminal tools for both MacOS and NixOS sub-system in Win WSL2.

Install NixOS-WSL: 
Download and extract this: https://github.com/nix-community/NixOS-WSL/releases/download/2405.5.4/NixOS-WSL-Launcher.zip
open a shell in the extracted folder and run:
```
.\NixOS.exe install
```
open the nixos-wsl instance and run
```
nix-shell -p neovim git
```
Download this repo:
```
git clone https://github.com/anscarlett/.config-nixos.git
```
run the following command to init the flake
```
sudo nixos-rebuild switch --flake ~/.config-nixos#nixos
```

exit the nix-shell and reboot the wsl instance.
