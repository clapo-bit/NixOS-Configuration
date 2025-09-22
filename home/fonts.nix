{ pkgs, config, ... }:

{
  # Nerd font
  fonts = {
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace  = [ "JetBrainsMono Nerd Font" ];
      };
    };
  };

}
