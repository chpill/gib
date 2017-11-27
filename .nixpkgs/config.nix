{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {

    all = with pkgs; buildEnv {

      name = "all";

      paths = [
        docker
        emacs
        htop
        iotop
        mitmproxy # also uses python 3.6
        nox
        python36Packages.docker_compose
        python36Packages.youtube-dl
        redshift
        ripgrep
        tree
        xcape
        yarn
      ];
    };
  };

}

