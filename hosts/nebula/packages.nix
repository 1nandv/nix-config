{ config, pkgs, inputs, ... }:
{
    environment.systemPackages = with pkgs; [
        home-manager
        wget
        curl
        cowsay
        fastfetch
        cava
        htop
        ripgrep
        gcc
        tree
        yt-dlp
        openssl
        rsync
        lld
        go
        zig
        jdk
        python3
        nodejs
        vlang
        neovim
        unzip
        fzf
        lutris
        wineWowPackages.stable
        wineWowPackages.waylandFull
        winetricks
        adwaita-icon-theme-legacy
        pkgs.man-pages
        pkgs.man-pages-posix
        openssh
    ];
}

