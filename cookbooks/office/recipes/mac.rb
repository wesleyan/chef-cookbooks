dmg_package "Office2011" do
  app "Office Installer"
  volumes_dir "Microsoft Office 2011"
  dmg_name "Office2011"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/microsoft_office-2011/Office2011.dmg"
  checksum "e220451584db851492d5dcb5b4ea91c861e38c322ead57aa58c03bddec53a4e2"
  action :install
  type "mpkg"
  package_id "com.microsoft.office.en.core.pkg.14.0.0"
end

dmg_package "Service Pack 1 Update" do
  app "Office 2011 14.1.0 Update"
  volumes_dir "Microsoft Office 2011 14.1.0 Update"
  dmg_name "Office2011-1410UpdateEN"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/microsoft_office-2011/Office2011-1410UpdateEN.dmg"
  checksum "875d6f4e3c406fffa3d479ee567a86ef02827ba7a64aaa4299ad9d3961868b64"
  action :install
  type "mpkg"
  package_id "com.microsoft.office.en.core_resources.pkg.14.1.0.update"
end


dmg_package "14.2.3 Update" do 
    app "Office 2011 14.2.3 Update"
    volumes_dir "Microsoft Office 2011 14.2.3 Update"
    dmg_name "Office2011-1423UpdateEN"
    source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/microsoft_office-2011/Office2011-1423UpdateEN.dmg"
    checksum "90d19175102c8531882785a203b7e64aaee1036278336d9f1a15eda8d6eb79d8"
    action :install
    type "pkg"
    package_id "com.microsoft.office.en.core_resources.pkg.14.2.3.update"
end
  
dmg_package "14.2.4 Update" do
  app "Office 2011 14.2.4 Update"
  volumes_dir "Microsoft Office 2011 14.2.4 Update"
  dmg_name "Office2011-1424UpdateEN"
  source "http://baratheon.class.wesleyan.edu/mac_os_x-10.8/microsoft_office-2011/Office2011-1424UpdateEN.dmg"
  checksum "00d6457f181713bfd3f950aa29a3697e3f8f1f7504f807083cb14ad5525526fa"
  action :install
  type "pkg"
  package_id "com.microsoft.office.en.core_resources.pkg.14.2.4.update"
end