#
# Cookbook Name:: nodejs
# Provider:: nodejs
#

action :add do
  execute "npm list -g | grep phonegap || npm install -g #{new_resource.name}"
end

