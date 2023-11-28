# This runs in userland

echo "

==> Setup complete, adding config files to new user plus some other config

"

read -p "Please enter your password again: " pwd

echo "

==> AUR helper installed

"

read -p "Do you want to have a barebone (b) or complete (c) install? " installType

if [[ "$installType" != "c" ]]; then
    pacman -Syu --noconfirm nodejs npm rustup kate python-pip gcc
fi

pacman -Syu --noconfirm vscodium


mkdir /home/arch-is-best/.config

mv /home/arch-is-best/arch-dev-vm/config/* /home/arch-is-best/.config

file="/home/arch-is-best/vscode-extensions"
while read line; do
    vscodium --install-extension "${line}"
done < "${file}"

echo "

==> We now need to change the shell to a more user-friendly one.
Please enter your password again

"

chsh -s /bin/fish

exit