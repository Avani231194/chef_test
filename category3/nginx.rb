apt_package 'nginx' do
  package_name 'nginx' 
  provider  Chef::Provider::Package::Apt
#  version  '1.4.6-1ubuntu3.7' 
 action :install              
end

git 'clone' do
   repository 'git@github.com:OpsTree/Site.git'
   revision 'opstree'
   action :checkout
   destination '/home/vagrant/git/opstree'
   user 'root'
end

git 'clone_tech' do
   repository 'git@github.com:OpsTree/Site.git'
   revision 'techprimo'
   action :checkout
   destination '/home/vagrant/git/techprimo'
   user 'root'
end

file '/etc/nginx/sites-available/opstree.conf' do
  content 'server {
       listen 80;
       listen [::]:80;
       root /home/vagrant/git/opstree;
       index index.html index.htm index.nginx-debian.html;
       server_name opstree.com www.opstree.com;
       location / {
             try_files $uri $uri/ =404;
       }
}'
  mode '0755'
  owner 'root'
end

file '/etc/nginx/sites-available/techprimo.conf' do
  content 'server {
       listen 80;
       listen [::]:80;
       root /home/vagrant/git/techprimo;
       index index.html index.htm index.nginx-debian.html;
       server_name techprimo.com www.techprimo.com;
       location / {
             try_files $uri $uri/ =404;
       }
}'
  mode '0755'
  owner 'root'
end

link '/etc/nginx/sites-available/opstree.conf' do
 to '/etc/nginx/sites-enabled/opstree.conf'  
 action :create
end

link '/etc/nginx/sites-available/techprimo.conf' do
 to '/etc/nginx/sites-enabled/techprimo.conf'
  action :create
end

service 'nginx' do
 action :restart
end












