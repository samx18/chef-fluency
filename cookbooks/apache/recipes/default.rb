#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache2"
end

package 'Apache2' do
	package_name package
	action :install
end

service 'Apache2' do
	service_name package
	action [:start,:enable]
end

