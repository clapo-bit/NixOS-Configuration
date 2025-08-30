{ config, pkgs, ... }:

{

  programs.kitty = {
    enable = true;
    themeFile = "Catppuccin-Macchiato";
    settings = {
      allow_remote_control = "yes";
      confirm_os_window_close = "0";
    };
  };
}
