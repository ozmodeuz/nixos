{ config, lib, ... }:
{
  boot.plymouth = {
    enable = true;
    theme = "breeze";
  };
}
