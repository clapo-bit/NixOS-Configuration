{pkgs, lib, ...}:

{
  # NVF
  programs.nvf = {
    enable = true;
                    
    settings = {
      vim = {
        theme = {
          enable = true;
          name = "catppuccin";
          style = "macchiato";

        };
      };
    };
  };
}
