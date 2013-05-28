include_recipe "homebrew"

homebrew_tap "homebrew/dupes"
package "tcl-tk" do
  version "8.5.13"
  options "--enable-threads --with-x11"
end

package "python" do
  version "2.7.5"
  #options "--with-brewed-tk" ( disabled until this option is fixed )
end

package "python3" do
  version "3.3.2"
end
