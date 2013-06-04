#
# Cookbook Name:: gnu_r
# Provider:: gnu_r_packages
#

action :install do
  system("R -q -e 'options(repos=\"#{new_resource.mirror}\"); if(!(\"#{new_resource.name}\" %in% rownames(installed.packages()))){ install.packages(\"#{new_resource.name}\")}'")
end

action :update do
  system("R -q -e 'options(repos=\"#{new_resource.mirror}\"); update.packages(ask=\"FALSE\")'")
end
