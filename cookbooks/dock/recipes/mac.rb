# cookbook_file "/tmp/dockutil.py" do
#   source "dockutil.py"
#   owner "root"
#   group "wheel"
#   mode "0777"
#   action :create
# end

cookbook_file "/tmp/additemtodock" do
  source "additemtodock"
  owner "root"
  group "wheel"
  mode "0755"
  action :create
end

cookbook_file "/tmp/removeitemfromdock" do
  source "removeitemfromdock"
  owner "root"
  group "wheel"
  mode "0755"
  action :create
end

# dock_remove "all" do
#   all_users true
# end

