#
# Cookbook Name:: printers
# Provider:: printer
#

action :add do
	system("lpadmin -p #{new_resource.name} -v lpd://falcon.wesleyan.edu/printers/#{new_resource.name} -m #{new_resource.model} -E")
end

action :remove do
	system("lpadmin -x #{new_resource.name}")
end