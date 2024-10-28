{ config, lib, pkgs, ... }: {

  home-manager = {
    useGlobalPkgs = true;
    backupFileExtension = "hm-bak";

    home.packages = with pkgs; [
      zip
      unzip
      p7zip

      curl
      gnugrep
      gnused
      ani-cli

      poppler
      imagemagick
      ffmpegthumbnailer
    ];

    programs.neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
      vimdiffAlias = true;
      defaultEditor = true;
    };

    programs = {
      jq.enable = true;
      fd.enable = true;
      ripgrep.enable = true;
      zathura.enable = true;
    };

    programs.fzf = {
      enable = true;
      enableFishIntegration = true;
    };

    programs.zoxide = {
      enable = true;
      enableFishIntegration = true;
    };

    programs.fish = {
      enable = true;
      interactiveShellInit = ''
        set fish_greeting
      '';
      shellAbbrs = {
        da = "ani-cli";
        dv = "yt-dlp";
      };
    };

    programs.git = {
      enable = true;
      userEmail = "personalemailofbaldev@gmail.com";
      userName = "Baldev Singh";
    };

    programs.gh = {
      enable = true;
      settings = {
        git_protocol = "https";
        prompt = "enabled";
      };
    };

  };
