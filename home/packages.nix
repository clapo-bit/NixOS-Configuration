{ pkgs, config, ... }:

{
  # Home Packages
  home.packages = with pkgs; [
    dconf
    zathura
    shutter
    bitwarden-desktop
    wget
    networkmanagerapplet
    himalaya
    teams-for-linux
    brightnessctl
    wev
    wlsunset
    mullvad-vpn
    intel-media-driver
    swww
    waypaper
    firefox
    vesktop
    (yazi.override {
      _7zz = _7zz-rar;
    })
    tree
    fastfetch
    home-manager
    kitty
    obsidian
    jq
    ffmpeg_8
    neovim
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
}
