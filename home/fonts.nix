{ pkgs, config, ... }:

{
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

}
