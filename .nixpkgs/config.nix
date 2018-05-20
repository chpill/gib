{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {

    linux-all = with pkgs; buildEnv {

      name = "linux-all";

      paths = [
        clojure
        docker
        # issues with font?
        # emacs
        fd
        fzf
        htop
        iotop
        jdk
        # very unstable, download the bin from github
        # mitmproxy
        nox
        oh-my-zsh
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
        fzf
        htop # seems very broken on macos...
        nox
        ripgrep
        tree
        yarn
      ];
    };
  };

}

