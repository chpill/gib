{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {

    linux-all = with pkgs; buildEnv {

      name = "linux-all";

      paths = [
        clojure
        docker
        emacs
        fd
        htop
        iotop
        jdk
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

    macos-all = with pkgs; buildEnv {

      name = "macos-all";

      paths = [
        clojure
        emacs
        htop # seems very broken on macos...
        nox
        ripgrep
        tree
        yarn
      ];
    };
  };

}

