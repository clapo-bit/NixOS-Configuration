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
      alias nixsys='sudo nixos-rebuild switch --flake path:$HOME/nixos --impure'
      # Clean builds to last 3
      alias nixcl3='sudo nix-env --delete-generations +3 && sudo nix-collect-garbage -d' 
      # Github backup alias
      alias nixbackup='
        cd ~/nixos
	if ! git diff-index --quiet HEAD; then
	  git add .
	  git commit -m \"NixOS config $(date + %d-%m-%Y_%H-%M-%S)\"
	  git push origin main
	else
	  echo \"No changes to commit\"
	fi'

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
