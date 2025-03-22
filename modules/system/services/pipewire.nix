{ lib, config, ... }: lib.mkIf config.isDesktop {
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
  };
}
