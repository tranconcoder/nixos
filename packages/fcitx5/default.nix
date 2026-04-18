{ pkgs }:

pkgs.fcitx5.withPlugins (plugins: with plugins; [ libpinyin ])