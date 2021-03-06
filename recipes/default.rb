#
# Cookbook Name:: railsbox
# Recipe:: default
# "apt\sudo\user\curl\htop\git\tmux"+rbenv+nginx+nodejs+psql+github-deploys
#
# Copyright (C) 2013 zhiping
#
# All rights reserved - Do Not Redistribute
#

node.set['build_essential']['compiletime'] = true

include_recipe "appbox"
include_recipe "railsbox::ruby"
include_recipe "railsbox::nginx"
include_recipe "runit"
include_recipe "railsbox::nodejs"

if node["railsbox"]["apps"]["unicorn"]
  include_recipe "railsbox::unicorn"
end

if node["railsbox"]["databases"]["mysql"]
  include_recipe "railsbox::mysql"
end

if node["github_deploys"]
	include_recipe "railsbox::github-deploys"
end
