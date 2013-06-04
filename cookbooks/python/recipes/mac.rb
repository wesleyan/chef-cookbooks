include_recipe "homebrew"

homebrew_tap "homebrew/dupes"
package "tcl-tk" do
  version "8.5.13"
  options "--enable-threads --with-x11"
end

execute "Allow homebrew permissions" do
  command "chmod 777 /usr/local/include"
end

execute "Hotfix for Tkinter error (https://github.com/mxcl/homebrew/issues/19099)" do
  command "ln -s /opt/X11/include/X11 /usr/local/include/X11"
  not_if { ::File.exists? "/usr/local/include/X11"}
end

package "python" do
  version "2.7.5"
  options "--with-brewed-tk"
end

package "python3" do
  version "3.3.2"
end

ruby_block "Add homebrew python to system path" do
	block do
		content = ''
		::File.open("/etc/bashrc", "r") do |f|
			content = f.read()
		end
		unless content =~ /export PATH=\/usr\/local\/share\/python:$PATH/
			::File.open("/etc/bashrc", "a") do |f|
				f.puts "export PATH=/usr/local/share/python:$PATH"
			end
		end
	end
end
