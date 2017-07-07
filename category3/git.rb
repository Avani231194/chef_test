git 'clone' do
   repository 'git@github.com:OpsTree/Site.git'
   revision 'opstree'
   action :checkout
   destination '/home/vagrant/git'
   user 'root'
end

git '/home/vagrant/git' do
   repository 'git@github.com:OpsTree/Site.git'
   revision 'techprimo'
   action :checkout
   destination '/home/vagrant/git'
   user 'root'
end

