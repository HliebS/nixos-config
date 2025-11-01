{ config, pkgs, pkgs-stable, ... }:
{
  home.username = "hliebs";
  home.homeDirectory = "/home/hliebs";

  imports = [
    ../../home/mango
    ../../home/programs
  ];

  programs.fish = {
    enable = true;
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/.config/nixos-config/#gigabyte-g5ke";
    };
  };

  home.stateVersion = "25.05";
}
