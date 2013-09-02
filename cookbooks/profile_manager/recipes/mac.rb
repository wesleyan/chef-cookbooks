cookbook_file "/tmp/Default_Enrollment_Profile.mobileconfig"

execute "Add node to Profile Manager" do
  command "/usr/bin/profiles -I -F /tmp/Default_Enrollment_Profile.mobileconfig"
  not_if { ::File.exists? "/var/db/receipts/edu.wesleyan.profilemanager.plist" }
end

ruby_block "Create Receipt" do
	block do
		f = ::File.new("/var/db/receipts/edu.wesleyan.profilemanager.plist", "w")
		f.puts "<plist></plist>"
		f.close
	end
	not_if { ::File.exists? "/var/db/receipts/edu.wesleyan.profilemanager.plist" }
end
