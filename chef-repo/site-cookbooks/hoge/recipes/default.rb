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

user "aehata" do
  comment "hogehogehoge"
  group "users"
  home "/home/aehata"
  shell "/bin/bash"
  password nil
  supports :manage_home => true
  action   [:create, :manage]
end

group "wheel" do
  action :modify
  members [ 'aehata' ]
  append true
end

group 'aehata-group' do
  group_name 'aehata-group'
  gid        999
  action     [:create]
end

user "aehata2" do
  comment "hogefuga"
  group "aehata-group"
  home "/home/aehata2"
  shell "/bin/bash"
  password nil
  supports :manage_home => true
  action   [:create, :manage]
end
