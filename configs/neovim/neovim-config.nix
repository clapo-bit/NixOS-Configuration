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
          style = "mocha";
        };
      
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;

        languages = {
          enableTreesitter = true;

          nix.enable = true;
          ts.enable = true;
          rust.enable = true;
        };

        lsp.enable = true;

        options = {
          tabstop = 2;
          shiftwidth = 2;
          expandtab = true;
          smartindent = true;
        };
      };
    };
  };
}
