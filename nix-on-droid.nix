{ config, lib, pkgs, ... }: {

  environment.packages = with pkgs; [
    git
    vim

    nerdfonts.override
    { fonts = [ "CascadiaCode" ]; }
  ];

  environment.etcBackupExtension = ".bak";

  system.stateVersion = "24.05";

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  time.timeZone = "Asia/Kolkata";

  home-manager = {
    config = ./home-manager;
    backupFileExtension = "hm-bak";
    useGlobalPkgs = true;
  };

  android-integration = {
    termux-open.enable = true;
    termux-setup-storage.enable = true;
    termux-reload-settings.enable = true;
  };

  user.shell = "${pkgs.fish}/bin/fish";

  terminal.font = "${pkgs.nerdfonts}/bin/nerdfonts";

  terminal.colors = {
    background = "#1e1e2e";
    foreground = "#cdd6f4";
    cursor = "#FFFFFF";
    color0 = "#45475a";
    color8 = "#585b70";
    color1 = "#f38ba8";
    color9 = "#f38ba8";
    color2 = "#a6e3a1";
    color10 = "a6e3a1";
    color3 = "#f9e2af";
    color11 = "f9e2af";
    color4 = "#89b4fa";
    color12 = "89b4fa";
    color5 = "#f5c2e7";
    color13 = "f5c2e7";
    color6 = "#94e2d5";
    color14 = "94e2d5";
    color7 = "#bac2de";
    color15 = "a6adc8";
  };
}
