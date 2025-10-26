{ pkgs, ... }:
{
  programs.fish.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.hliebs = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.fish;
  };

  services.getty.autologinUser = "hliebs";

  services.openssh.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    settings = {
      default-cache-ttl = 43200;
      max-cache-ttl = 43200;
    };
  };

  programs.git.enable = true;

  programs.mango.enable = true;
}

