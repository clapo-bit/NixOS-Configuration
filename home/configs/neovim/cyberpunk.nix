{pkgs, lib, ...}:

{
  # NVF
  programs.nvf = {
    enable = true;
                    
    settings = {
      vim = {
        theme = {
          enable = true;
          name = "base16";

          base16-colors = {
            base00 = "#000000";
            base01 = "#FF0055";
            base02 = "#009550";
            base03 = "#F4EF00";
            base04 = "#6766B3";
            base05 = "#D57BFF";
            base06 = "#0DCDCD";
            base07 = "#EEFFFF";
            base08 = "#777777";
            base09 = "#FF4081";
            base0A = "#00FF9C";
            base0B = "#FFFC58";
            base0C = "#76C1FF";
            base0D = "#C592FF";
            base0E = "#00FFC8";
            base0F = "#FFFFFF";
          };
        };
      };
    };
  };
}
