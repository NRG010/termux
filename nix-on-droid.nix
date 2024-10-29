{ config, lib, pkgs, ... }: {

  environment.packages = with pkgs; [
    vim

    #procps
    #killall
    #diffutils
    #findutils
    #utillinux
    #tzdata
    #hostname
    #man
    #gnugrep
    #gnupg
    #gnused
    #gnutar
    #bzip2
    #gzip
    #xz
    #zip
    #unzip
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
}
