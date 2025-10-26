{ pkgs, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.hliebs = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.fish;
  };
  programs.fish.enable = true;

  fonts = {
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
    ];

    fontconfig = {
      defaultFonts ={
        monospace = [ "JetBrains Mono" ];
      };
    };
  };

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

