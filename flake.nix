{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    disko = {
      url = "github:nix-community/disko/latest";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    mangowc = {
      url = "github:DreamMaoMao/mangowc";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, ... }: {
    nixosConfigurations = {
      gigabyte-g5ke = let
        username = "hliebs";
      in
      nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs;};
        
        modules = [
          inputs.disko.nixosModules.disko
          ./hosts/gigabyte-g5ke/configuration.nix
          ./users/${username}/user-configuration.nix
          inputs.mangowc.nixosModules.mango
          inputs.home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              backupFileExtension = "backup";
              users.${username}.imports = [
                inputs.mangowc.hmModules.mango
                ./users/${username}/home.nix
              ];
            };
          }
        ];
      };
    };
  };
}

