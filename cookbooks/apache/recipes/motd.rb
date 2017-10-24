hostname = node['hostname']

file '/etc/motd' do
	content "Welcome to node:  #{hostname}.This node is managed by chefServer!"
end
