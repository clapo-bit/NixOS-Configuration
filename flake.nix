{
  description = "Flake V1 with Home Manager";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nvf.url = "github:notashelf/nvf";
    nvf.inputs.nixpkgs.follows = "nixpkgs";
    catppuccin.url = "github:catppuccin/nix";

  };

  outputs = { self, nixpkgs, home-manager, nvf, catppuccin, ... }: {

   
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
	modules = [
	  ./configuration.nix
	  catppuccin.nixosModules.catppuccin
	  home-manager.nixosModules.home-manager
	  {
	    home-manager.useGlobalPkgs = true;
	    home-manager.useUserPackages = true;
	    home-manager.users.jamal = {
              imports = [
	        ./home.nix
		catppuccin.homeModules.catppuccin
		nvf.homeManagerModules.default
	      ];
	    };
	  }
	  nvf.nixosModules.default 
	];
      };
    };
  };
}
