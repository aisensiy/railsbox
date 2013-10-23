#
# Cookbook Name:: railsbox
# Recipe:: mysql
#
# Install Postgresql and create specified databases and users.
# from https://github.com/teohm/rackbox-cookbook/blob/master/libraries/helpers.rb
#
# Copyright (C) 2013 zhiping Limited
#

include_recipe "databox::default"

root_password = node["railsbox"]["db_root_password"]
if root_password
  node.set["databox"]["db_root_password"] = root_password
end

node.set["databox"]["databases"]["mysql"] = node.set["railsbox"]["databases"]["mysql"]

