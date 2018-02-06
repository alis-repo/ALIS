#!/usr/bin/bash
#
# DESCRIPTION
#
min_pack(){
  local name="installing minimal required packages"
  title "Start $name: $@"
  pacstrap  -C configs/etc/alis/pacstrap.conf "$mountpoint"  systemd systemd-swap crda polkit linux linux-docs linux-headers mkinitcpio \
                                                    btrfs-progs snapper intel-ucode broadcom-wl-dkms wpa_supplicant \
                                                    terminus-font zsh zsh-completions \
                                                    zsh-syntax-highlighting bash-completion grml-zsh-config pkgfile \
                                                    gzip sed lzop nano iputils sudo
}

export min_pack