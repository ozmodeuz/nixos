{ config, home-manager, pkgs, ... }:
{
  home.packages = (with pkgs; [
    kitty
    rio
    waveterm
  ]);
}