include_recipe "homebrew"

homebrew_tap "homebrew/dupes"
package "tcl-tk" do
  version "8.5.13"
  options "--enable-threads --with-x11"
end

execute "brew uninstall python"
  user 'administrator'
  not_if { ::File.exists? "/usr/local/Cellar/python/2.7.6" }
end

package "python" do
  version "2.7.6"
  options "--with-brewed-tk"
end

package "python3" do
  version "3.3.2"
end

execute "brew linkapps"
  user 'administrator'
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
