include_recipe "homebrew"

#package "sqlite" do
#  version "3.7.14"
#end

#execute "brew link -overwrite sqlite" do
#  user node["homebrew"]["user"] 
#end

homebrew_tap "homebrew/dupes"
package "tk" do
  version "8.5.13"
  options "--enable-threads"
end

package "python" do
  version "2.7.3"
  options "--with-brewed-tk"
end


package "python3" do
  version "3.3.0"
end

