#
# Cookbook Name:: gnu_r
# Provider:: gnu_r_packages
#

# This action will install a package on OS X.
action :osx_install do
  system("R -q -e \"options(repos='#{new_resource.mirror}'); if(!('#{new_resource.name}' %in% rownames(installed.packages()))){ install.packages('#{new_resource.name}')}\"")
end

# This action will update a package on OS X.
action :osx_update do
  system("R -q -e \"options(repos='#{new_resource.mirror}'); update.packages(ask='FALSE')\"")
end

# This action install a package on Windows
action :win_install do
	system("\"C:\\Program Files\\R\\R-3.0.2\\bin\\R.exe\" -q -e \"options(repos='#{new_resource.mirror}'); if(!('#{new_resource.name}' %in% rownames(installed.packages()))){ install.packages('#{new_resource.name}')}\"")
end

# This action will update a package on Windows.
action :win_update do
	system("\"C:\\Program Files\\R\\R-3.0.2\\bin\\R.exe\" -q -e \"options(repos='#{new_resource.mirror}'); update.packages(ask='FALSE')\"")
end