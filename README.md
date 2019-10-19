# GIB - Blueprints with git



## Install steps

This was used on debian testing with xfce as default desktop environment.

```sh
cd ~

# Add my user to sudoers
su root
echo "chpill ALL=(ALL) NOPASSWD: ALL" | sudo tee --append /etc/sudoers

# Install some base tools (pmisc is for `killall` and `pstree`)
sudo apt update && apt install awesome git curl pmisc vim

# Need to install some proprietary firmware?
vim /etc/apt/sources.list
# Then add `non-free` at the end of the `deb ...` line. For example:
# deb http://deb.debian.org/debian/ bullseye main non-free
# Then for example:
sudo apt update
sudo apt install firmware-iwlwifi firmware-amd-graphics firmware-realtek


# Install nix in multi-user mode, and install the custom package list located at `.nixpkgs/config.nix`. This may take a while so go to the next steps while this is ongoing.
# NB: this must be done before retrieving the config or nix will complain that
# the profile or zshrc files already mentions nix...
sh <(curl https://nixos.org/nix/install) --daemon
curl https://nixos.org/nix/install | sh
nix-env -i chpill-linux


# Get the config
git clone https://github.com/chpill/gib
mv gib/.git .git
# This way, we can visualize the differences with the current
git status
# If there is nothing worth saving from the current config
git reset --hard
# Note: you should probably not checkout the .spacemacs now. Better to let
# spacemacs initialize a new one, and check the differences.


# Change default shell to zsh
sudo chsh -s /usr/bin/zsh chpill


# Create a new ssh key, asking which email to associate
# This will also prompt for password and file path
read -p "Enter the email to associate with the ssh key: " ssh_key_email
ssh-keygen -t ed25519 -C $ssh_key_email


# Install spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git co develop
emacs

```
