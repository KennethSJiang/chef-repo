#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.
#
package "ntp" do
end

package "ntpdate" do
end

template "/etc/ntp.conf" do
  notifies :restart, "service[ntpd]"
  source "ntp.erb"
  owner "root"
  group "root"
  action :create
  mode "0644"
end

service "ntpd" do
  action [:start, :enable]
end
