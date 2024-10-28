{ config, lib, pkgs, ... }: {

  environment.packages = with pkgs; [];

  environment.etcBackupExtension = ".bak";

  system.stateVersion = "24.05";

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  time.timeZone = "Asia/Kolkata";

  home-manager = {
    backupFileExtension = "hm-bak";
    useGlobalPkgs = true;
    config = { config, lib, pkgs, ... }:
    {
      home.stateVersion = "24.05";
      modules = [ ./home-manager ];
    };
  };
}
