{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {

    linux-all = with pkgs; buildEnv {

      name = "chpill-linux";

      paths = [
        clojure
        docker
        emacs # issues with font??
        fd
        fzf
        htop
        iotop
        jdk
        # mitmproxy # very unstable, download the bin from github
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

      name = "chpill-macos";

      paths = [
        clojure
        emacs
        fzf
        # seems very broken on macos...
        # htop
        nox
        ripgrep
        tree
        yarn
      ];
    };
  };

}

