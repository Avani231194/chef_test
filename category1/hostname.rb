file '/etc/hostname' do
  content 'avanisinghal'
  mode '0755'
  owner 'root'
  group 'root'
end

service 'hostname' do
   action :restart
end
