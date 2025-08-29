{ config, pkgs, ... }:

{

  programs.kitty = {
    enable = true;
    themeFile = "Catppuccin-Mocha";
    settings = {
      allow_remote_control = "yes";
      confirm_os_window_close = "0";
    };
  };
}
