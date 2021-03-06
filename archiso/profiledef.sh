#!/bin/bash
# shellcheck disable=SC2034

desktop="i3"
date_mybuild=$(date +%y)-$(date +%m)-$(date +%d)
arcolinuxVersion=$date_mybuild

iso_name="arcobobo-i3"
isoLabel='arcobobbo-'$desktop'-'$arcolinuxVersion'-x86_64.iso'
iso_publisher="ArcoLinux <http://www.arcolinux.info>"
iso_application="ArcoLinux Live/Rescue CD"
iso_version=$date_mybuild
install_dir=arch
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
#airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
airootfs_image_tool_options=('-comp' 'xz')
#airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '22')
#airootfs_image_tool_options=('-comp' 'zstd')
file_permissions=(
  ["/etc/gshadow"]="0:0:600"	
  ["/etc/shadow"]="0:0:600"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/etc/polkit-1/rules.d"]="0:0:750"
  ["/etc/sudoers.d"]="0:0:750"
  ["/usr/local/bin/arcolinux-all-cores"]="0:0:755"
  ["/usr/local/bin/arcolinux-before"]="0:0:755"
  ["/usr/local/bin/arcolinux-final"]="0:0:755"
)
