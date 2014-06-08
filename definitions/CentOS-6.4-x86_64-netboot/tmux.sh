# Install libevent
wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
tar -xvzf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
./configure
make
make install

# Install tmux
wget http://downloads.sourceforge.net/tmux/tmux-1.9a.tar.gz
tar -xvzf tmux-1.9a.tar.gz
cd tmux-1.9a
./configure
make
make install

# Add /usr/local/lib to the linker search paths
# echo export LD_LIBRARY_PATH=/usr/local/lib >> ~/.bash_profile
# . ~/.bash_profile

# Symlink libevent into library folder.
ln -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent-2.0.so.5
