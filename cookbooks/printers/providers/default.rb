#
# Cookbook Name:: printers
# Provider:: printer
#

action :add do
  if new_resource.ip
    system("lpadmin -p #{new_resource.name} -v ipp://#{new_resource.ip}/ -m \"#{new_resource.model}\" -D #{new_resource.name} -E -o HPOption_Duplexer=True -o Duplex=DuplexNoTumble -o Duplexer=Installed")
  else
	  system("lpadmin -p #{new_resource.name} -v lpd://falcon.wesleyan.edu/#{new_resource.name} -m \"#{new_resource.model}\" -D #{new_resource.name} -E -o HPOption_Duplexer=True -o Duplex=DuplexNoTumble -o Duplexer=Installed")
  end
end

action :remove do
	system("lpadmin -x #{new_resource.name}")
end

action :set_default do
	system("lpadmin -d #{new_resource.name}")
end
