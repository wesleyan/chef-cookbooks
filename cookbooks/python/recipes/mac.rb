include_recipe "homebrew"

homebrew_tap "homebrew/dupes"
package "tcl-tk" do
  version "8.5.13"
  options "--enable-threads --with-x11"
end

# Fixes an error in building Tkinter, when the issue linked below is resolved
# this will no longer be necessary
execute "Hotfix for Tkinter error (https://github.com/mxcl/homebrew/issues/19099)" do
  command "ln -s /opt/X11/include/X11 /usr/local/include/X11"
end

package "python" do
  version "2.7.3"
  options "--with-brewed-tk"
end


package "python3" do
  version "3.3.0"
end

