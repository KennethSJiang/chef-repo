#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.
file "/etc/motd" do
  action :create
  content "Property of VISER"
  mode "0644"
  owner "root"
  group "root"
end
