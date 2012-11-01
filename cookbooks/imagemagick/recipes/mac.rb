#
# Cookbook Name:: imagemagick
# Recipe:: mac
#
# Copyright 2012, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

# directory "/temp" do
#   owner "root"
#   group "wheel"
#   action :create
# end
# 
# remote_file "/temp/ImageMagick-x86_64-apple-darwin12.1.0.tar.gz" do
#   source "http://www.imagemagick.org/download/binaries/ImageMagick-x86_64-apple-darwin12.1.0.tar.gz"
#   checksum "dcf3744f24b8d75bb904675aaaa31ad38d544034221095c1f3e77953a57bd21e"
# end
# 
# execute "untar imagemagick" do
#   command "tar -zxf /temp/ImageMagick-x86_64-apple-darwin12.1.0.tar.gz -C /temp/"
# end
# 
# 
# execute "export MAGICK_HOME='/temp/ImageMagick-6.7.9'"
# 
# execute "export PATH='$MAGICK_HOME/bin:$PATH'"
# 
# execute "export DYLD_LIBRARY_PATH='$MAGICK_HOME/lib/'"
# 
# gem_package "rmagick" do
#   


s