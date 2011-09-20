Riak On DotCloud (ALPHA)
========================

This is an **ALPHA** (i.e., not production-ready) Erlang+Riak stack
for DotCloud. It only exposes the HTTP interface for now (not the
ProtoBuf one).


How It Works
------------

Since the Erlang and Riak builds take some time, this recipe downloads
pre-built versions from S3.
The build is not totally DotCloud-compliant (it uses all the default build
options, instead of trying to setup the logs/data/etc. directories in the
proper place).

Again: **don't use this for production!**

Proper Riak support will come soon.


How To Use It (Standalone)
--------------------------

Just use our (un)patented Clone-And-DotCloud-Push method::

  git clone git://github.com/jpetazzo/riak-on-dotcloud-ALPHA.git
  dotcloud push basho riak-on-dotcloud-ALPHA

At the end of the push, the URL to Riak will be shown.


How To Use It (In Your App)
---------------------------

Add the ``dotcloud.yml`` supplied here to your own ``dotcloud.yml``,
and copy the ``builder`` script to your repository as well. Push as
usual. Rejoice (but remember not to put any important stuff into
your Riak yet).


Authentication
--------------

By default, there is **NO** authentication. Anyone knowing its URL
can acccess your Riak. You can setup authentication yourself if
you need to. And of course, when Riak will be officially supported,
authentication will be pre-configured by default, like for other
DotCloud-supported database stacks.

