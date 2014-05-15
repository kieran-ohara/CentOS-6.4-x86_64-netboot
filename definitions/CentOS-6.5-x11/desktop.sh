yum -y groupinstall "Desktop" "Desktop Platform" "X Window System" "Fonts"
sed -i 's/id:3/id:5/' /etc/inittab
sed -i '4iAutomaticLoginEnable=true\nAutomaticLogin=root' /etc/gdm/custom.conf

yum -y install vim-X11

if ln -s /etc/gdm/custom.conf /root/Desktop; then
        echo 'Created custom.conf symlink on desktop.'
else
        echo 'Failed to create custom.conf symlink on desktop'
fi 2>/dev/null

if ln -s /etc/inittab /root/Desktop; then
        echo 'Created inittab symlink on desktop.'
else
        echo 'Failed to create inittab symlink on desktop'
fi 2>/dev/null