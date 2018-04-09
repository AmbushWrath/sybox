yum install -y ruby ruby-devel lua lua-devel luajit \
	luajit-devel ctags git python python-devel \
	tcl-devel perl perl-devel perl-ExtUtils-ParseXS \
	perl-ExtUtils-XSpp perl-ExtUtils-CBuilder \
	perl-ExtUtils-Embed
yum -y install https://centos7.iuscommunity.org/ius-release.rpm
yum -y install python36u
yum -y install python36u-pip
yum -y install python36u-devel
ln -s /usr/bin/python3.6 /usr/bin/python3
ln -s /usr/bin/pip3.6 /usr/bin/pip3
yum group install "Development Tools"
yum install ncurses-devel
cd ~
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
	--enable-multibyte \
	--enable-rubyinterp=yes \
	--enable-pythoninterp=yes \
	--with-python-config-dir=/usr/lib64/python2.7/config \
	--enable-python3interp=yes \
	--with-python3-config-dir=/usr/lib64/python3.6/config \
	--enable-perlinterp=yes \
	--enable-luainterp=yes \
	--enable-gui=gtk2 \
	--enable-cscope \
	--prefix=/usr/local
make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
make install
