#!/usr/bin/env dash
clear
echo "
+----------------+                  +---------------+
| Installed the: +----------------+ | Designed for: +------+
| Steam,                          | | highest efficiency,  |
| Firefox Developer Edition,      | | coolest temperature, |
| VLC media player,               | | lowest latency,      |
| DaVinci Resolve,                | | fastest performance, |
| GNU Image Manipulation Program, | | latest optimization, |
| Audacity,                       | | newest feature.      |
| VSCodium,                       | +----------------------+
| lsfg-vk Configuration Window,   | +--------------+
| Goverlay,                       | | Created for: +-----------------------+
| LACT,                           | | gaming, entertaining, editing,       |
| GParted,                        | | streaming, overclocking, managing,   |
| Mission Center,                 | | monitoring, tweaking, experimenting. |
| OBS Studio,                     | +--------------------------------------+
| Winetricks,                     |
| OCCT,                           |
| Hardinfo2,                      |
| Alacritty.                      |
+---------------------------------+
+------------------------------------------------------------+
| To continue type [NVME] or [SATA] without square brackets. |
+------------------------------------------------------------+
"
read VARIABLE
if [ $VARIABLE != NVME ] && [ $VARIABLE != SATA ]; then
	exit
fi
clear
systemd-inhibit --mode=block --what=sleep sleep 1d &
git clone http://github.com/morrownr/rtw89.git
sudo dash ./Files/CachyOS.sh
sudo cachyos-rate-mirrors
sudo pacman --sync --noconfirm --refresh --sysupgrade
for PACKAGE in steam firefox mpv code kate partitionmanager plasma-systemmonitor konsole kitty protontricks sddm btop micro vim proton-cachyos proton-cachyos-slr wine-cachyos-opt wine-staging wine-gecko wine-mono fish linux-cachyos linux-cachyos-lts; do
	sudo pacman --remove --noconfirm --cascade --recursive --nosave $PACKAGE
done
sudo pacman --remove --noconfirm --cascade --recursive --nosave $(pacman --query --noconfirm --quiet --unrequired --deps)
sudo pacman --sync --noconfirm --needed firefox-developer-edition vlc davinci-resolve gimp audacity vscodium lsfg-vk goverlay lact gparted mission-center obs-studio winetricks occt hardinfo2 alacritty plasma-login-manager wine-cachyos mangohud gamemode lib32-mangohud lib32-gamemode
sudo pacman --sync --noconfirm --needed speech-dispatcher xorg-xrandr yay downgrade dkms sbctl intel-compute-runtime rocm-opencl-runtime intel-ucode amd-ucode linux-cachyos-rc linux-cachyos-rc-headers
sudo pacman --sync --noconfirm wine-cachyos
sudo chwd --install amd
sudo chwd --install intel
sudo chwd --install fallback
sudo dkms remove --force --all rtw89/7.0
sudo dkms install --force ./rtw89
sudo rm --force --recursive /boot/loader
sudo rm --force --recursive /boot/EFI
sudo bootctl install
sudo bootctl cleanup
sudo sbctl create-keys
sudo sbctl enroll-keys
sudo sbctl sign --save /boot/EFI/systemd/systemd-bootx64.efi
sudo sbctl sign --save /boot/EFI/BOOT/BOOTX64.EFI
sudo cp --force /usr/bin/wine /usr/bin/wine-staging
sudo cp --force ./Files/CachyOS.sh /home/cachyos.sh
sudo cp --force ./Files/Wine /usr/bin/wine
sudo cp --force ./Files/Shells /etc/shells
sudo cp --force ./Files/Hosts /etc/hosts
sudo cp --force ./Files/Environment /etc/environment
sudo cp --force ./Files/MkInitCpIO.conf /etc/mkinitcpio.conf
sudo cp --force ./Files/CachyOS.service /etc/systemd/system/cachyos.service
sudo cp --force ./Files/TimeSyncD.conf /etc/systemd/timesyncd.conf
sudo cp --force ./Files/ResolveD.conf /etc/systemd/resolved.conf
sudo cp --force ./rtw89/usb_storage.conf /etc/modprobe.d/usb_storage.conf
sudo cp --force ./rtw89/rtw89.conf /etc/modprobe.d/rtw89.conf
sudo cp --force ./Files/CachyOS.conf /boot/loader/entries/cachyos.conf
sudo cp --force ./Files/Loader.conf /boot/loader/loader.conf
sudo chmod u+w /home/cachyos.sh
sudo chmod u+w /usr/bin/wine
sudo chmod u+w /etc/shells
sudo chmod u+w /etc/hosts
sudo chmod u+w /etc/environment
sudo chmod u+w /etc/mkinitcpio.conf
sudo chmod u+w /etc/systemd/system/cachyos.service
sudo chmod u+w /etc/systemd/timesyncd.conf
sudo chmod u+w /etc/systemd/resolved.conf
sudo chmod u+w /etc/modprobe.d/usb_storage.conf
sudo chmod u+w /etc/modprobe.d/rtw89.conf
sudo chmod u+w /boot/loader/entries/cachyos.conf
sudo chmod u+w /boot/loader/loader.conf
sudo chsh --shell /usr/bin/dash $USER
sudo chsh --shell /usr/bin/dash root
sudo sed --in-place "s#nemesis_electron#$USER#" /etc/environment
if [ $VARIABLE != NVME ]; then
	sudo sed --in-place "s#nvme0n1p2#sda2#" /boot/loader/entries/cachyos.conf
fi
sudo passwd --unlock $USER
sudo passwd --unlock root
sudo faillock --reset --user $USER
sudo faillock --reset --user root
sudo systemctl mask --now cachyos-rate-mirrors.timer
sudo systemctl mask --now systemd-zram-setup@zram0.service
sudo systemctl enable plasmalogin.service
sudo systemctl enable --now lactd.service
sudo systemctl enable --now hardinfo2.service
sudo systemctl enable --now ananicy-cpp.service
sudo systemctl enable --now systemd-oomd.service
sudo systemctl enable --now cachyos.service
sudo systemctl restart systemd-timesyncd.service
sudo systemctl restart systemd-resolved.service
sudo sensors-detect --auto
sudo mkinitcpio --allpresets
yay --sync --noconfirm --needed vkbasalt-overlay-git reshade-shaders-git lib32-vkbasalt-redemp-git
yay --sync --noconfirm --clean
if [ $(pgrep --count firefox) != 1 ]; then
	firefox-developer-edition --headless &
	sleep 1s
	pkill firefox
fi
for LINK in firefox-developer-edition vlc DaVinciResolve gimp audacity vscodium lsfg-vk-ui io.github.benjamimgois.goverlay io.github.ilya_zlobintsev.LACT gparted io.missioncenter.MissionCenter com.obsproject.Studio winetricks occt hardinfo2 Alacritty; do
	rm --force ~/Desktop/$LINK.desktop
	sleep 0.1s
	ln --force --symbolic /usr/share/applications/$LINK.desktop ~/Desktop/$LINK.desktop
done
export WINE=/usr/bin/wine-staging
export PROFILE=$(find ~/.config/mozilla/firefox -name "*.dev-edition-default")
mkdir --parents ~/.wine/winetricks
mkdir --parents ~/.wine/drive_c/users/Public
mkdir --parents ~/.config/VSCodium/User
mkdir --parents ~/.config/lsfg-vk
mkdir --parents ~/.config/goverlay
mkdir --parents ~/.config/vkBasalt-overlay/configs
mkdir --parents ~/.config/MangoHud
mkdir --parents ~/.config/vkBasalt
cp --force ./Files/DXVk.conf ~/.wine/dxvk.conf
cp --force ./Files/User.js $PROFILE/user.js
cp --force ./Files/Settings.json ~/.config/VSCodium/User/settings.json
cp --force ./Files/Conf.toml ~/.config/lsfg-vk/conf.toml
cp --force ./Files/GOverlay.conf ~/.config/goverlay/goverlay.conf
cp --force ./Files/Default.conf ~/.config/vkBasalt-overlay/configs/default.conf
cp --force ./Files/Default_Config ~/.config/vkBasalt-overlay/default_config
cp --force ./Files/Shader_Manager.conf ~/.config/vkBasalt-overlay/shader_manager.conf
cp --force ./Files/VkBasalt.conf ~/.config/vkBasalt-overlay/vkBasalt.conf
cp --force ./Files/MangoHUD.conf ~/.config/MangoHud/MangoHud.conf
cp --force ./Files/PowerDevilRC ~/.config/powerdevilrc
cp --force ./Files/PowerManagementProfilesRC ~/.config/powermanagementprofilesrc
chmod u+w ~/.wine/dxvk.conf
chmod u+w $PROFILE/user.js
chmod u+w ~/.config/VSCodium/User/settings.json
chmod u+w ~/.config/lsfg-vk/conf.toml
chmod u+w ~/.config/goverlay/goverlay.conf
chmod u+w ~/.config/vkBasalt-overlay/configs/default.conf
chmod u+w ~/.config/vkBasalt-overlay/default_config
chmod u+w ~/.config/vkBasalt-overlay/shader_manager.conf
chmod u+w ~/.config/vkBasalt-overlay/vkBasalt.conf
chmod u+w ~/.config/MangoHud/MangoHud.conf
chmod u+w ~/.config/powerdevilrc
chmod u+w ~/.config/powermanagementprofilesrc
sed --in-place "s#nemesis_electron#$USER#" ~/.config/lsfg-vk/conf.toml
sed --in-place "s#Shift_R#Shift_L#" ~/.config/MangoHud/MangoHud.conf
sed --in-place "s#nemesis_electron#$USER#" ~/.config/MangoHud/MangoHud.conf
rm --force ~/.wine/drive_c/"Program Files (x86)"/Steam/steam.exe
rm --force ~/.wine/.update-timestamp
rm --force ~/.wine/winetricks.log
rm --force ~/Desktop/Steam.desktop
rm --force ~/nohup.out
rm --force --recursive ~/.wine/drive_c/"Program Files"/"Internet Explorer"
rm --force --recursive ~/.wine/drive_c/"Program Files"/"Windows Media Player"
rm --force --recursive ~/.wine/drive_c/"Program Files"/"Windows NT"
rm --force --recursive ~/.wine/drive_c/"Program Files"/"Common Files"/System
rm --force --recursive ~/.wine/drive_c/"Program Files (x86)"/"Internet Explorer"
rm --force --recursive ~/.wine/drive_c/"Program Files (x86)"/"Windows Media Player"
rm --force --recursive ~/.wine/drive_c/"Program Files (x86)"/"Windows NT"
rm --force --recursive ~/.wine/drive_c/"Program Files (x86)"/"Common Files"/System
rm --force --recursive ~/.wine/drive_c/windows
rm --force --recursive ~/.wine/drive_c/users/$USER/AppData/Local/Temp
rm --force --recursive ~/.wine/drive_c/users/Public/Desktop
rm --force --recursive ~/.cache/winetricks
mkdir --parents ~/.wine/drive_c/windows
mkdir --parents ~/.wine/drive_c/users/$USER/AppData/Local
ln --force --symbolic /tmp ~/.wine/drive_c/windows/temp
ln --force --symbolic /tmp ~/.wine/drive_c/users/$USER/AppData/Local/Temp
ln --force --symbolic ~/.wine/winetricks ~/.cache/winetricks
ln --force --symbolic ~/Desktop ~/.wine/drive_c/users/Public/Desktop
winetricks --force --unattended alldlls=default
winetricks --force --unattended steam physx shockwave
winetricks --force --unattended vkd3d dxvk_async dxvk_nvapi dsoal openal lavfilters ffdshow ogg powershell
winetricks --force --unattended d3dx11_43 d3dx11_42 d3dx10 d3dx9
winetricks --force --unattended d3dcompiler_47 d3dcompiler_46 d3dcompiler_43 d3dcompiler_42
winetricks --force --unattended mfc140 mfc120 mfc110 mfc100 mfc90 mfc80 mfc71 mfc70 mfc42 mfc40
winetricks --force --unattended win11
cp --force /usr/lib/wine/i386-windows/ddraw.dll ~/.wine/drive_c/windows/syswow64/ddraw_.dll
cp --force ./Files/Lossless.dll ~/.wine/drive_c/windows/system32/lossless.dll
cp --force ./Files/Hosts ~/.wine/drive_c/windows/system32/drivers/etc/hosts
cp --force ./Files/DDraw.dll ~/.wine/drive_c/windows/syswow64/ddraw.dll
chmod u+w ~/.wine/drive_c/windows/system32/lossless.dll
chmod u+w ~/.wine/drive_c/windows/system32/drivers/etc/hosts
chmod u+w ~/.wine/drive_c/windows/syswow64/ddraw.dll
wine regedit /c ./Files/User.reg
sync
resolvectl flush-caches
clear
echo "
+-----------------------+
| Reboot in 10 seconds. |
+-----------------------+
+-------------+
| Setup done. |
+-------------+
"
sleep 10s
systemctl reboot
exit
