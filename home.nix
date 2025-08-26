{pkgs, ... }:
{

  #GDK scaling
  home.sessionVariables = {
    GDK_SCALE = "1";
    GDK_DPI_SCALE = "1";
    QT_QPA_PLATFORM = "xcb";
    ELECTRON_FORCE_DEVICE_SCALE_FACTOR = "1";
  };
  #Home manager core details
  home.username = "jamal";
  home.stateVersion = "23.05";
  home.homeDirectory = "/home/jamal";
 
  #Set defualt text editor
  home.sessionVariables= {
    EDITOR = "${pkgs.neovim}/bin/nvim";
    VISUAL = "${pkgs.neovim}/bin/nvim";
  };

   
  # Zsh and User commands for NixOS
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
	  git commit -m \"NixOS config $(date \"+%d-%m-%Y_%H-%M-%S\")\"
	  git push origin main
	else
	  echo \"No changes to commit\"
	fi'
      
      alias sync='/home/jamal/nixos/scripts/bisync-kitty.sh'
 
    ";
  };
 
  # Home Packages
  home.packages = with pkgs; [
    neovim
    firefox
    (yazi.override {
      _7zz = _7zz-rar;
    })
    fastfetch
    tree
    home-manager
    alacritty
    kitty
    obsidian
    ffmpeg_6
    jq
    poppler
    fd
    ripgrep
    fzf
    zoxide
    resvg
    imagemagick
    wl-clipboard
    nerd-fonts.jetbrains-mono
    rclone
    hyprpaper
    swaybg
    hydrapaper



  ];
  
  # Nerd font
  fonts = {
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace  = [ "JetBrainsMono Nerd Font" ];
        sansSerif  = [ "JetBrainsMono Nerd Font" ];
        serif      = [ "JetBrainsMono Nerd Font" ];
      };
    };
  };
  # Import configuration files to user directory
  xdg.configFile = {
    "hypr".source = ./configs/hypr;
    "yazi".source = ./configs/yazi;
    "kitty".source = ./configs/kitty;
  };
 

  # Enable/Configure programs declaritavely
 
  programs.home-manager.enable = true;
 
  programs.htop.enable = true;
}
