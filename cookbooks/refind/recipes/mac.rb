# Installs rEFInd
# Copyright 2013, Wesleyan University

cookbook_file "/tmp/refind-bin-0.7.4.zip"
execute "unzip /tmp/refind-bin-0.7.4.zip && /tmp/refind-bin-0.7.4/install.sh"
