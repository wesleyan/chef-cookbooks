cookbook_file "/tmp/font.zip"
# package "pkg-config"
# package "imagemagick"
# gem_package "rmagick"

directory "/usr/local/share/ghostscript/fonts/" do
  owner "root"
  group "wheel"
  mode "755"
  recursive true
  action :create
end

execute "unzip -o /tmp/font.zip -d /usr/local/share/ghostscript/fonts/"

# desktop_picture "/var/generated_files/background.jpg" do
#   action :generate
# end


# desktop_picture "/Library/Desktop Pictures/Brushes.jpg"
desktop_picture "/var/generated_files/background.jpg"