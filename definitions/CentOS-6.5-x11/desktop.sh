yum -y groupinstall "Desktop" "Desktop Platform" "X Window System" "Fonts"
sed -i 's/id:3/id:5/' /etc/inittab
sed -i '4iAutomaticLoginEnable=true\nAutomaticLogin=root' /etc/gdm/custom.conf

yum -y install vim-X11