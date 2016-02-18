#!/bin/sh

set -e

printenv

# See http://rethinkdb.com/docs/cli-options/

rethinkdb serve \
-d $SNAP_APP_DATA/data \ # specify directory to store data and metadata
--bind all \ # add the address of a local interface to listen on when accepting connections, loopback addresses are enabled by default
--cluster-port 29015 \ # port: port for receiving connections from other nodes
--driver-port 28015 \ # port: port for RethinkDB protocol client drivers
--reql-http-proxy 1080 \ #[protocol://]host[:port]: HTTP proxy to use for performing r.http(...) queries, default port is 1080
--http-port 8080 \ # port: port for web administration console
--no-update-check \ # : disable checking for available updates. Also turns off anonymous usage data collection.
--log-file $SNAP_APP_DATA/rethinkdb.log \ # file: specify the file to log to, defaults to ‘log_file’
# --runuser \ #user: run as the specified user
# --rungroup \ #group: run with the specified group
# --web-static-directory \ # directory: the directory containing web resources for the http interface
# --no-http-admin \ #: disable web administration console
# --pid-file  \ #path: a file in which to write the process id when the process is running
# --daemon \ #: daemonize this rethinkdb process
# -c \ #[ --cores ] n: the number of cores to use
# -o 10080 \ #[ --port-offset ] offset: all ports used locally will have this value added
# -j \ #[ --join ] host:port: host and port of a RethinkDB node to connect to
# --config-file $SNAP_APP_DATA/default.conf

;
