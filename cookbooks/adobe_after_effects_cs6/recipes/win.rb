# Installs Adobe After Effects CS6 for Windows

remote_file "C:/adobe_after_effects_cs6.zip" do
	backup false
	source "http://ims-chef.wesleyan.edu/windows/adobe_after_effects_cs6/after_effects.zip"
	not_if { ::File.exists? "#{Chef::Config[:file_cache_path]}/Receipts/Adobe After Effects CS6" }
end

execute 'Unzip Installer' do
	command '"C:\Program Files (x86)\7-zip\7z.exe" x -y adobe_after_effects_cs6.zip > nul'
	not_if { ::File.exists? "#{Chef::Config[:file_cache_path]}/Receipts/Adobe After Effects CS6" }
end

execute 'Install Adobe After Effects' do
	command 'start msiexec /qn /i C:\adobe_after_effects_cs6\Build\adobe_after_effects_cs6.msi'
	not_if { ::File.exists? "#{Chef::Config[:file_cache_path]}/Receipts/Adobe After Effects CS6" }
end

execute 'Remove installer files' do
	command 'rm -rf C:\adobe_after_effects_cs6 adobe_after_effects_cs6.zip'
	not_if { ::File.exists? "#{Chef::Config[:file_cache_path]}/Receipts/Adobe After Effects CS6" }
end

ruby_block 'Create Package Receipt' do
	block do
		::Dir.mkdir("#{Chef::Config[:file_cache_path]}/Receipts") unless ::Dir.exists? "#{Chef::Config[:file_cache_path]}/Receipts"
		::File.open("#{Chef::Config[:file_cache_path]}/Receipts/Adobe After Effects CS6", "w") do |f|
			f << "1.0.0"
		end
	end
	not_if { ::File.exists? "#{Chef::Config[:file_cache_path]}/Receipts/Adobe After Effects CS6" }
end