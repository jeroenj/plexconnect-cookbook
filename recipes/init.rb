template '/etc/init.d/plexconnect' do
  source 'init.d.erb'
  mode 0755
  notifies :run, 'execute[plexconnect rc.d]'
end

execute 'plexconnect rc.d' do
  command 'update-rc.d plexconnect defaults'
  not_if { 'update-rc.d -n plexconnect defaults | grep "already existd"' }
end
