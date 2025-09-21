{ config, pkgs,  ... }:
{
  
  # Imports
  imports = [
    ./home/configs/kitty/kitty.nix 
    ./home/configs/neovim/neovim.nix
    ./home/configs/zsh/zsh.nix
    ./home/configs/neomutt/neomutt.nix
    ./home/user.nix
    ./home/fonts.nix
    ./home/packages.nix
  ];

  xdg.configFile = {
    "hypr".source = ./home/configs/hypr;
    "himalaya".source = ./home/configs/himalaya;
    "yazi".source = ./home/configs/yazi;
    "fastfetch".source = ./home/configs/fastfetch;
    "waypaper".source = ./home/configs/waypaper;
    "rofi".source = ./home/configs/rofi;
  };

  #GDK scaling
  home.sessionVariables = {
    GDK_SCALE = "1";
    GDK_DPI_SCALE = "1";
    QT_QPA_PLATFORM = "xcb";
    ELECTRON_FORCE_DEVICE_SCALE_FACTOR = "1";
  };
  
  #GTK theming
  gtk = {
    gtk3 = {
      enable = true;
      theme = {
        package = pkgs.magnetic-catppuccin-gtk;
        name = "gtk-Dark.scss";
      };
    };
  };
  
 
  #Set defualt text editor
  home.sessionVariables= {
    EDITOR = "nvim";
    VISUAL = "${pkgs.neovim}/bin/nvim";
  };

  
   # Import configuration files to user homeDirectory
  # Enable/Configure programs declaritavely
 
  programs.home-manager.enable = true;
   
  programs.htop.enable = true;
}
