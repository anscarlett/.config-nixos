{
  config,
  lib,
  pkgs,
  ...
}: {
  wsl.enable = true;
  wsl.defaultUser = "nixos";

  users.defaultUserShell = pkgs.zsh;

  boot.loader.systemd-boot.configurationLimit = 10;
  system.stateVersion = "24.05";
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 14d";
  };
}
