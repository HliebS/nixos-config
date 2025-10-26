{ config, pkgs, ... }:
{
  home.username = "hliebs";
  home.homeDirectory = "/home/hliebs";

  imports = [
    ../../home/mango
  ];

  programs.fish = {
    enable = true;
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/.config/nixos-config/#gigabyte-g5ke";
    };
  };

  wayland.windowManager.mango.enable = true;

  home.stateVersion = "25.05";
}
