remote_file 'C:/temp/ms_office-2010.zip' do
    source "http://baratheon.class.wesleyan.edu/windows-8/ms_office-2010/ms_office-2010.zip"
    checksum "65fd5ef8f8470e655b5fdef9b9eec8cc4498e33d1de179da80997ac75033b97a"
end

execute "expand office" do
  command "7z x C:/temp/ms_office-2010.zip -y -oC:/temp/"
  action :run
end

windows_package "Microsoft Office 2010" do
  source "c:/temp/ms_office-2010/setup.exe"
  action :install
  installer_type :custom
end