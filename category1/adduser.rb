user 'anuj' do
  comment 'sudo'
  home '/home/anuj'
  shell '/bin/bash'
  password 'anuj'
end

group "add user" do
  group_name 'sudo'
  members 'anuj'
  action :modify
  append true
end

