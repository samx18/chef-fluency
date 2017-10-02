file 'default www' do 
	path '/var/www/html/index.html'
	content 'Hello World! This is version 2.0'
end

#Search within recipe based on a role

webnodes = search('node','role:web')

# Iterate over each node and put

webnodes.each do |node|
	puts node
end 

