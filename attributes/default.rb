# proxy pass plexconnect

default[:plexconnect][:install_dir] = '/srv/apps/plexconnect'
default[:plexconnect][:log_dir] = '/var/log/plexconnect'

default[:plexconnect][:git_url] = 'https://github.com/iBaa/PlexConnect.git'
default[:plexconnect][:git_ref] = 'v0.4'

default[:plexconnect][:settings][:certfile] = ''
default[:plexconnect][:settings][:ip_pms] = '127.0.0.1'
default[:plexconnect][:settings][:logpath] = default[:plexconnect][:log_dir]
default[:plexconnect][:settings][:myplex_user] = 'user'
default[:plexconnect][:settings][:myplex_auth] = 'auth'
default[:plexconnect][:settings][:apple_tv_id] = 'id'
default[:plexconnect][:settings][:hosttointercept] = ''
default[:plexconnect][:settings][:port_dnsserver] = 53
default[:plexconnect][:settings][:port_pms] = 32400
default[:plexconnect][:settings][:port_ssl] = 443
default[:plexconnect][:settings][:port_webserver] = 80

default[:plexconnect][:certificate] = ''
default[:plexconnect][:key] = ''
