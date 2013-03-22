#
# Cookbook Name:: hello
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
log "Hello, Chef!"

#package "zsh" do
#  action :install
#end

%w{zsh gcc make readline-devel}.each do |pkg|
  package pkg do
    action :install
  end
end
