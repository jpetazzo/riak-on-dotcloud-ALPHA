#!/bin/sh

slowbuild () {
    cd /tmp
    # Erlang
    wget http://www.erlang.org/download/otp_src_R14B01.tar.gz
    tar zxf otp_src_R14B01.tar.gz 
    cd otp*
    ./configure --prefix=/home/dotcloud/erlang
    make
    make install
    # Riak
    wget http://downloads.basho.com/riak/riak-0.14/riak-0.14.2.tar.gz
    tar zxf riak-0.14.2.tar.gz
    cd riak-0.14.2
    make rel
    cp -r riak/. ~/riak
}

fastbuild () {
    curl http://dotcloud-plugins.s3.amazonaws.com/erlang.tar.gz |
    tar -zxf-
    curl http://dotcloud-plugins.s3.amazonaws.com/riak.tar.gz |
    tar -zxf-
}

cd
fastbuild

cat > ~/profile <<EOF
export PATH=~/erlang/bin:~/riak/bin:$PATH
EOF

