#
# Cookbook Name:: printers
# Provider:: printer
#

action :add do
	system("lpadmin -p #{new_resource.name} -v lpd://falcon.wesleyan.edu/#{new_resource.name} -m \"#{new_resource.model}\" -D #{new_resource.name} -E -o HPOption_Duplexer=True -o Duplex=DuplexNoTumble -o Duplexer=Installed")
end

action :add_no_falcon do
  system("lpadmin -p #{new_resource.name} -v dnssd://#{new_resource.name}._printer._tcp.local. -m \"#{new_resource.model}\" -D #{new_resource.name} -E -o Duplexer=Installed -o Duplex=DuplexNoTumble")
  #dnssd://DAC100-E3880-1._printer._tcp.local.
action :remove do
	system("lpadmin -x #{new_resource.name}")
end

action :set_default do
	system("lpadmin -d #{new_resource.name}")
end
