# Install X11 window system.
yum -y groupinstall "Desktop" "Desktop Platform" "X Window System" "Fonts"
#sed -i 's/id:3/id:5/' /etc/inittab
sed -i '4iAutomaticLoginEnable=true\nAutomaticLogin=vagrant' /etc/gdm/custom.conf