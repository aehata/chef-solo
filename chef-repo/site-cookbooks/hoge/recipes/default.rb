#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/tmp/fuga" do
  source "hoge"
  mode 00644
  checksum "eccc4d475e6055136424a5a0e2f1db6e30d9a712916bb4ecb2d6acd48ede05b5"
end

directory '/tmp/hoge/' do
  owner  'root'
  group  'root'
  mode   '0755'
  action :create
end
