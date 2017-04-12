#
# Cookbook Name:: os-essentials
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

service "ssh"

Ssh_config "PermitRootLogin" do
	  string "PermitRootLogin #{node[:ssh][:permit_root_login]}"
end

