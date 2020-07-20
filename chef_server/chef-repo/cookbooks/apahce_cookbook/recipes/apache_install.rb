package 'httpd'

file '/var/www/html/index.html' do
  content '</h1>This is my home page</h1>'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

service 'httpd' do
  action [:start, :enable]
end
