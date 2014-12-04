#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.
#
package "httpd" do
  action :install
end

service "httpd" do
  action [:start, :enable]
end

template "/var/www/html/index.html" do
  source "index.html.erb"
  owner "root"
  group "root"
  mode "0644"
end
