{ pkgs, ... }:
{
  wayland.windowManager.mango.enable = true;

  imports = [
    ./miscelaneous.nix
    ./appearances.nix
    ./peripherals.nix
    ./layers.nix
    ./windows.nix
    ./layouts.nix
    ./tags.nix
    ./monitors.nix
    ./keybinds.nix
  ];

  home.packages = with pkgs; [
    swaybg
    waybar
  ];

  wayland.windowManager.mango.autostart_sh = ''
    swaybg -i ~/walls/nixos-wall.png >/dev/null 2>&1 &
    waybar -c ~/.config/nixos-config/home/mango/waybar/config.jsonc -s ~/.config/nixos-config/home/mango/waybar/style.css >/dev/null 2>&1 &
  '';
}
