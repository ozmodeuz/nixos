{ pkgs, ... }:
{
  services = {
    desktopManager.plasma6.enable = true;
    displayManager = {
      #sddm.enable = true;
      defaultSession = "plasma";
    };
    flatpak.enable = true;
    openssh.enable = true;
    pcscd.enable = true;
    pipewire.audio.enable = true;
    pipewire.wireplumber.enable = true;
    tailscale = {
      enable = true;
      extraUpFlags = [ "--operator=oz" ];
    };
    udev.packages = [ pkgs.yubikey-personalization ];
    xserver = {
      enable = true;
      desktopManager = {
        #budgie.enable = true;
        #cinnamon.enable = true;
        #deepin.enable = true;
        #enlightenment.enable = true;
        #gnome.enable = true;
        #mate.enable = true;
        #pantheon.enable = true;
      };
      displayManager.gdm = {
        enable = true;
        autoSuspend = false;
      };
      xkb = {
        layout = "gb";
      };
    };
    yubikey-agent.enable = true;
  };
}
