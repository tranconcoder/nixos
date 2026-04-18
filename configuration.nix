{ config, lib, pkgs, ... }:

{
  imports =
    [ ./hardware-configuration.nix
      ./boot/default.nix
      ./system/networking/default.nix
      ./system/time/default.nix
      ./desktop/hyprland/default.nix
      ./desktop/pipewire/default.nix
      ./users/tvconss/default.nix
    ];

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    (import ../packages/kitty/default.nix { inherit pkgs; })
    (import ../packages/nodejs/default.nix { inherit pkgs; })
    (import ../packages/neovim/default.nix { inherit pkgs; })
    (import ../packages/google-chrome/default.nix { inherit pkgs; })
    (import ../packages/postman/default.nix { inherit pkgs; })
    (import ../packages/dbeaver-bin/default.nix { inherit pkgs; })
    (import ../packages/opencode/default.nix { inherit pkgs; })
    (import ../packages/git/default.nix { inherit pkgs; })
    (import ../packages/curl/default.nix { inherit pkgs; })
    (import ../packages/wget/default.nix { inherit pkgs; })
    (import ../packages/unzip/default.nix { inherit pkgs; })
    (import ../packages/file/default.nix { inherit pkgs; })
    (import ../packages/htop/default.nix { inherit pkgs; })
    (import ../packages/rsync/default.nix { inherit pkgs; })
    (import ../packages/bash/default.nix { inherit pkgs; })
    (import ../packages/coreutils/default.nix { inherit pkgs; })
    (import ../packages/gcc/default.nix { inherit pkgs; })
    (import ../packages/gnumake/default.nix { inherit pkgs; })
    (import ../packages/python3/default.nix { inherit pkgs; })
    (import ../packages/docker/default.nix { inherit pkgs; })
    (import ../packages/ripgrep/default.nix { inherit pkgs; })
    (import ../packages/fd/default.nix { inherit pkgs; })
    (import ../packages/fzf/default.nix { inherit pkgs; })
    (import ../packages/ffmpeg/default.nix { inherit pkgs; })
    (import ../packages/imagemagick/default.nix { inherit pkgs; })
    (import ../packages/vlc/default.nix { inherit pkgs; })
    (import ../packages/mpv/default.nix { inherit pkgs; })
  ];

  system.stateVersion = "25.11";

}