cookbook_file "/tmp/font.zip"

cookbook_file "/usr/bin/xcrun" 

#cookbook_file "/tmp/screenresolution.zip"

file "/usr/bin/xcrun" do
  owner "root"
  group "wheel"
  mode "0755"
  action :touch
end
  
# execute "xcode-select -switch /usr/bin"

package "pkg-config" do
  version "0.27.1"
end

package "imagemagick" do
  version "6.7.7-6"
end

gem_package "rmagick"

directory "/usr/local/share/ghostscript/fonts/" do
  owner "administrator"
  group "staff"
  mode "0755"
  recursive true
  action :create
end

execute "unzip -o /tmp/font.zip -d /usr/local/share/ghostscript/fonts/"
# execute "unzip -o /tmp/screenresolution.zip -d /tmp/"

desktop_picture "/var/generated_files/background.jpg" do
  action :generate
end


# desktop_picture "/Library/Desktop Pictures/Brushes.jpg"
desktop_picture "/var/generated_files/background.jpg"
