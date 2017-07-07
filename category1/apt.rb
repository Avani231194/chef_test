#update the repository and install list of packages
#    - net-tools
#    - openssh server
#    - htop



apt_update 'update' do
   action :update
end

package %w(net-tools openssh-server htop)  do
  action :install
  provider                   Chef::Provider::Package::Apt
end


#apt_package 'name' do
 # default_release            String
#  notifies                   # see description
#  options                    String
#  package_name               String, Array # defaults to 'name' if not specified
#  provider                   Chef::Provider::Package::Apt
#  source                     String
#  subscribes                 # see description
#  timeout                    String, Integer
#  version                    String, Array
#  action                     Symbol # defaults to :install if not specified
#end
