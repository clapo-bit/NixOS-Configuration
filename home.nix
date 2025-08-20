{pkgs, ... }:
{
 

 #Home manager core details
 home.username = "jamal";
 home.stateVersion = "23.05";
 home.homeDirectory = "/home/jamal";

 programs.zsh = {
    enable = true;
    initContent = "
      # Rebuild system
      alias nixsys='sudo nixos-rebuild switch --flake ~/nixos'
      # Clean builds to last 3
      alias nixcl3='sudo nix-env --delete-generations +3 && sudo nix-collect-garbage -d' 
      ";
  };
 

 home.packages = with pkgs; [
  neovim
  firefox
  nautilus
  yazi
  fastfetch
  tree
  home-manager
  ];

 
 programs.home-manager.enable = true;
 
 programs.htop.enable = true;
}
