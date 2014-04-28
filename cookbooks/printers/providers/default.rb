#
# Cookbook Name:: printers
# Provider:: printer
#

action :add do
  if new_resource.ip
    system("lpadmin -p #{new_resource.name} -v lpd://#{new_resource.ip} -m \"#{new_resource.model}\" -D #{new_resource.name} -o printer-is-shared=false -E")
  elsif new_resource.share
    system("lpadmin -p #{new_resource.name} -v \"dnssd://#{new_resource.share}\" -m \"#{new_resource.model}\" -D #{new_resource.name} -E") 
  else
    system("lpadmin -p #{new_resource.name} -v lpd://falcon.wesleyan.edu/#{new_resource.name} -m \"#{new_resource.model}\" -D #{new_resource.name} -E -o printer-is-shared=false -o HPOption_Duplexer=True -o Duplex=DuplexNoTumble -o Duplexer=Installed")
  end
end

action :remove do
  execute "lpadmin -x #{new_resource.name}" do
    returns [0,1]
  end
end

action :set_default do
  system("lpadmin -d #{new_resource.name}")
end
