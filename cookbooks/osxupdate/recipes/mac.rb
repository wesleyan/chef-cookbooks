dmg_package "OSXUpdCombo10.8.2" do
  app "OSXUpdCombo10.8.2"
  volumes_dir "OS X 10.8.2 Update Combo"
  dmg_name "OSXUpdCombo10.8.2"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/os_x_updates-10.8/OSXUpdCombo10.8.2.dmg"
  checksum "60641d639510b7c747a22d7ec87317251c9fa3702e31a266c48609219b821bd2"
  action :install
  type "pkg"
  package_id "com.apple.pkg.update.os.10.8.2.12C60.combo"
end
