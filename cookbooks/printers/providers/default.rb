#
# Cookbook Name:: printers
# Provider:: printer
#

action :add do
  unless `lpinfo -v`.index(new_resource.name)
    if new_resource.ip
      system("lpadmin -p #{new_resource.name} -v lpd://#{new_resource.ip} -m \"#{new_resource.model}\" -D #{new_resource.name} -o printer-is-shared=false -E")
    else
	    system("lpadmin -p #{new_resource.name} -v lpd://falcon.wesleyan.edu/#{new_resource.name} -m \"#{new_resource.model}\" -D #{new_resource.name} -E -o printer-is-shared=false -o HPOption_Duplexer=True -o Duplex=DuplexNoTumble -o Duplexer=Installed")
    end
  end
end

action :remove do
	system("lpadmin -x #{new_resource.name}")
end

action :set_default do
	system("lpadmin -d #{new_resource.name}")
end
