cookbook_file "/tmp/Default_Enrollment_Profile.mobileconfig"

execute "Add node to Profile Manager" do
  command "/usr/bin/profiles -I -F /tmp/Default_Enrollment_Profile.mobileconfig"
end
