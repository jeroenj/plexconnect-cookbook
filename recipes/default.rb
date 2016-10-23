user node[:plexconnect][:user] do
  system true
  shell '/bin/false'
end

directory node[:plexconnect][:install_dir] do
  recursive true
  owner node[:plexconnect][:user]
  group node[:plexconnect][:group]
end

git node[:plexconnect][:install_dir] do
  repository node[:plexconnect][:git_url]
  reference node[:plexconnect][:git_ref]
  action :checkout
  user node[:plexconnect][:user]
  group node[:plexconnect][:group]
end

directory node[:plexconnect][:log_dir] do
  owner node[:plexconnect][:user]
  group node[:plexconnect][:group]
end

pem_path = ::File.expand_path(::File.join(node[:plexconnect][:install_dir], node[:plexconnect][:settings][:certfile]))
file pem_path do
  content node[:plexconnect][:certificate] + node[:plexconnect][:key]
  owner node[:plexconnect][:user]
  group node[:plexconnect][:group]
end

file pem_path.gsub(/pem\z/, 'cer') do
  content node[:plexconnect][:certificate]
  owner node[:plexconnect][:user]
  group node[:plexconnect][:group]
end

template ::File.join(node[:plexconnect][:install_dir], 'Settings.cfg') do
  source 'Settings.cfg.erb'
  variables(
    certfile: node[:plexconnect][:settings][:certfile],
    enable_dnsserver: node[:plexconnect][:settings][:enable_dnsserver],
    hosttointercept: node[:plexconnect][:settings][:hosttointercept],
    ip_pms: node[:plexconnect][:settings][:ip_pms],
    logpath: node[:plexconnect][:settings][:logpath],
    port_dnsserver: node[:plexconnect][:settings][:port_dnsserver],
    port_pms: node[:plexconnect][:settings][:port_pms],
    port_ssl: node[:plexconnect][:settings][:port_ssl],
    port_webserver: node[:plexconnect][:settings][:port_webserver]
  )
  owner node[:plexconnect][:user]
  group node[:plexconnect][:group]
end

template ::File.join(node[:plexconnect][:install_dir], 'ATVSettings.cfg') do
  source 'ATVSettings.cfg.erb'
  variables(
    myplex_user: node[:plexconnect][:atv_settings][:myplex_user],
    myplex_auth: node[:plexconnect][:atv_settings][:myplex_auth],
    apple_tv_id: node[:plexconnect][:atv_settings][:apple_tv_id],
    subtitlesize: node[:plexconnect][:atv_settings][:subtitlesize],
    subtitlerenderer: node[:plexconnect][:atv_settings][:subtitlerenderer],
    transcodequality: node[:plexconnect][:atv_settings][:transcodequality]
  )
  owner node[:plexconnect][:user]
  group node[:plexconnect][:group]
end

include_recipe 'plexconnect::init'
