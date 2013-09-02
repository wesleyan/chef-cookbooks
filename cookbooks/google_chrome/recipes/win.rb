# Installs Chrome for Windows

windows_package "Google Chrome" do
  source "http://ims-chef.wesleyan.edu/windows/google_chrome/googlechrome-28.0.1500.71.msi"
  version "28.0.150071"
end
cookbook_file 'C:\bookmarks.html'
cookbook_file 'C:\Program Files (x86)\Google\Chrome\Application\master_preferences'