{ config, lib, pkgs, ... }: {

  environment.packages = with pkgs; [];

  environment.etcBackupExtension = ".bak";

  system.stateVersion = "24.05";

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  time.timeZone = "Asia/Kolkata";
}
