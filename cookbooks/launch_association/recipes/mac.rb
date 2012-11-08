cookbook_file "/tmp/duti.zip"

execute "unzip -o /tmp/duti.zip -d /tmp/"

file "/tmp/duti" do
  mode "0755"
end

launch_association_set_file_handler "public.html" do
  bundle_id "com.apple.Safari"
  all_users true
end
