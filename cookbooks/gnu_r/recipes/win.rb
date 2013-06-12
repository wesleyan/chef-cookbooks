# Installs R on Windows

windows_package "R" do
  source "http://ims-chef.wesleyan.edu/windows/gnu_r/R-3.0.1-win.exe"
  version "3.0.1"
end

gnu_r_packages "RCurl" do
	action :win_install
end
gnu_r_packages "twitteR" do
	action :win_install
end
gnu_r_packages "doBy" do
	action :win_install
end
gnu_r_packages "mvtnorm" do
	action :win_install
end
gnu_r_packages "plyr" do
	action :win_install
end
gnu_r_packages "stringr" do
	action :win_install
end
gnu_r_packages "ggplot2" do
	action :win_install
end
gnu_r_packages "XML" do
	action :win_install
end
gnu_r_packages "tm" do
	action :win_install
end
gnu_r_packages "wordcloud" do
	action :win_install
end
gnu_r_packages "lme4" do
	action :win_install
end
gnu_r_packages "nlme" do
	action :win_install
end
gnu_r_packages "e1071" do
	action :win_install
end
gnu_r_packages "nnet" do
	action :win_install
end
gnu_r_packages "descr" do
	action :win_install
end
gnu_r_packages "reshape" do
	action :win_install
end
gnu_r_packages "foreign" do
	action :win_install
end
gnu_r_packages "class" do
	action :win_install
end
gnu_r_packages "Ecdat" do
	action :win_install
end
gnu_r_packages "Psych" do
	action :win_install
end
gnu_r_packages "DAAG" do
	action :win_install
end
gnu_r_packages "lmtest" do
	action :win_install
end
gnu_r_packages "perturb" do
	action :win_install
end
gnu_r_packages "MEMSS" do
	action :win_install
end
gnu_r_packages "mlmRev" do
	action :win_install
end
gnu_r_packages "car" do
	action :win_install
end
gnu_r_packages "ape" do
	action :win_install
end
gnu_r_packages "ade4" do
	action :win_install
end

gnu_r_packages "update" do
	action :win_update
end

