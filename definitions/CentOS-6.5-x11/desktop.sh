yum -y groupinstall "Desktop" "Desktop Platform" "X Window System" "Fonts"
sed -i 's/id:3/id:5/' /etc/inittab
sed -i '4iAutomaticLoginEnabled=true\nAutomaticLogin=vagrant' /etc/gdm/custom.confvi 

yum -y install vim-X11

ln -s /etc/init.d /home/vagrant/Desktop
ln -s /etc/gdm/custom.conf /home/vagrant/Desktop
ln -s /etc/inittab /home/vagrant/Desktop


AutomaticLoginEnabled=true
AutomaticLogin=vagrant