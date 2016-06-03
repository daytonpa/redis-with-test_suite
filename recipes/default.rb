#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
# Translated Instructions From:
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-redis
#

version = node['redis']['version']

execute "apt-get update"

node['redis']['pkgs'].each do |pkg|
  package(pkg) do
    action :install
    not_if #already installed
  end
end

redis version do
  source node['redis']['source']
  version node['redis']['version']
  action :install
end

service "redis_6379" do
  action [ :start, :enable ]
  # This is necessary so that the service will not keep reporting as updated
  supports :status => true
end
