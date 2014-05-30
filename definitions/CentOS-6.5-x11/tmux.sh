wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
tar xzvf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
./configure && make
sudo make install

git clone git://git.code.sf.net/p/tmux/tmux-code tmux
cd tmux
sh autogen.sh
./configure && make
sudo make install