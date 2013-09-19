# Installs Chrome for Windows

windows_package "Google Chrome" do
  source "http://ims-chef.wesleyan.edu/windows/google_chrome/googlechrome-29.0.1547.76.msi"
  version "29.0.154776"
end
cookbook_file 'C:\bookmarks.html'
cookbook_file 'C:\Program Files (x86)\Google\Chrome\Application\master_preferences'