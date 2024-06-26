# Arch-Dev-VM

<div id="donate" align="center">
    <a href="https://store.janishutz.com/donate" target="_blank"><img src="https://store-cdn.janishutz.com/static/support-me.jpg" width="150px"></a>
</div>

This repo contains scripts to install a full Archlinux System with GNOME complete with the following additional packages:
- VSCodium (with custom settings)
- GDM (Gnome Display Manager)
- pip (optional)
- node & npm (optional)
- rustup (optional)
- neovim & nano 

You also get a fully configured Sudo user

# IMPORTANT: PLEASE ONLY INSTALL ON A VM OR ON A DEVICE WITH NO ADDITIONAL DATA ON IT YOU'D LIKE TO KEEP


# Running
There is a full, written guide available on my [blog](https://blog.janishutz.com/posts/2023/11/easy-ml-linux-vm-setup/).

First, [download](https://archlinux.org/download/) an ArchLinux ISO (scroll down to mirrors).

Then, set up a VM using for example VMWare Workstation Player 16

On a live-booted archlinux installer, run the following commands (read on below as well!):

```
pacman -Sy git
git clone https://github.com/simplePCBuilding/arch-dev-vm
cd arch-dev-vm
./install.sh
```

and follow the on-screen prompts. 

If the keyboard layout isn't correct run the following commands:
```
ls /usr/share/kbd/keymaps/**/*.map.gz
loadkeys [IDENTIFIER HERE (find it in the output above), usually of form de_CH-latin1, refer to blog for more instructions]
```

**NOTE: The keyboard layout by default is en_US-latin1**

## Editing the sudoers file
In the sudoers file, you need to uncomment the 15th line from the botton, just below the line that says
"## Uncomment to allow members of group wheel to execute any command"

Remove the # in the subsequent line and hit Ctrl + S, then Ctrl + X. This will allow all members
of the user group "wheel" to execute any command. 


## Post install
After install, you might want to install an AUR-Helper, like yay (yet another yogurt). Run the following commands after rebooting your system.

```
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

<div id="donate" align="center">
    <a href="https://store.janishutz.com/donate" target="_blank"><img src="https://store-cdn.janishutz.com/static/support-me.jpg" width="150px"></a>
</div>
