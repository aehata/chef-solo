#
# Cookbook Name:: login_user
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# login_users/recipes/default.rb
data_ids = data_bag('users')

data_ids.each do |id|
  u = data_bag_item('users', id)
  user u['username'] do
    group    u['group']
    home     u['home']
    shell    u['shell']
    password u['password']
    supports :manage_home => true
    action   [:create, :manage]
  end
end

