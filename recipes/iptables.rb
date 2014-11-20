iptables_rule 'plexconnect' do
  source 'iptables-rules.erb'
  variables(
    ip: '10.0.0.4',
    dnsserver: (node[:plexconnect][:settings][:port_dnsserver] != 53),
    webserver: (node[:plexconnect][:settings][:port_webserver] != 80),
    ssl: (node[:plexconnect][:settings][:port_ssl] != 443)
  )
end
