{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "nixpkgs/nixos-25.05";
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

  outputs =
    inputs@{
      self,
      nixpkgs,
      nixpkgs-stable,
      ...
    }:
    {
      nixosConfigurations = {
        gigabyte-g5ke =
          let
            username = "hliebs";
            system = "x86_64-linux";
            pkgs-stable = import nixpkgs-stable { inherit system; };
          in
          nixpkgs.lib.nixosSystem {
            inherit system;
            specialArgs = { inherit inputs; };

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
                  extraSpecialArgs = {
                    inherit pkgs-stable;
                  };
                };
              }
            ];
          };
      };
    };
}
