{ config, pkgs, ... }:
{
  home.username = "hs";
  home.homeDirectory = "/home/hs";

  programs.fish = {
    enable = true;
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/.config/nixos/#hs-g5ke-nixos";
    };
  };

  programs.kitty.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      env = [
	"LIBVA_DRIVER_NAME,nvidia"
	"__GLX_VENDOR_LIBRARY_NAME,nvidia"
	"AQ_DRM_DEVICES,/dev/dri/card0:/dev/dri/card1"
      ];

      input = {
        kb_layout = "de";
      };

      monitor = [
        "eDP-1, 1920x1080@60, 0x0, 1.25"
	"HDMI-A-1, 2560x1440@60, 1536x0, 1.0"
	"DP-5, 1920x1080@60, 4096x0, 1" 
      ];

      "$superMod" = "SUPER";

      bind =
      [
	"$superMod, F, exec, kitty"
	"$superMod, B, exec, brave"
	"$superMod, Q, exit"

	"$superMod, left, movefocus, l"
	"$superMod, up, movefocus, u"
	"$superMod, right, movefocus, r"
	"$superMod, down, movefocus, d"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 5;
      };

      cursor = {
        inactive_timeout = 5;
        no_warps = true;
      };
    };
  };

  home.stateVersion = "25.05";
}
