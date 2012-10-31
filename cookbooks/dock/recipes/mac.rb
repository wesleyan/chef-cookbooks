# dock_add "/Applications/Google Chrome.app" do
#   all_users true
# end
# 
# dock_add "/Applications/Firefox.app" do
#   all_users true
# end
# 
# dock_add "/Applications/Safari.app" do
#   all_users true
# end

dock_add "Browsers" do
  all_users true
  restart true
  action :folder_create
  show_as "grid"
  display_as "folder"
  arrangement "name"
end

