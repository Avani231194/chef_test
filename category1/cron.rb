cron 'clear_cache' do
  #action node.tags.include?('cookbooks-report') ? :create : :delete
 # minute '0'
  hour '3'
  minute '0'
  month '*' 
  #weekday ''
  user 'root'
  #mailto 'sysadmin@example.com'
  #home '/srv/supermarket/shared/system'
  command  'echo 3 > /proc/sys/vm/drop_caches'
  action :create
end
