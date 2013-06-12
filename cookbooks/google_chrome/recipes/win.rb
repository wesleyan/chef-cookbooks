# Installs Chrome for Windows

windows_package "Google Chrome" do
  source "http://ims-chef.wesleyan.edu/windows/google_chrome/chrome-27.0.msi"
  version "27.0.1453110" # really 27.0.1453.110, but Semtex requires only two '.'s
end
cookbook_file 'C:\bookmarks.html'
cookbook_file 'C:\Program Files (x86)\Google\Chrome\Application\master_preferences'