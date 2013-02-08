#############################################
# Sample recipe for emerging packages
# 
# Search the Engine Yard portage tree to find
# out package versions to install
#
# EXAMPLE:
#
# Ensure local package index is synced with tree
# $ eix-sync
#
# Search for libxml2
# $ eix libxml2
#############################################



# Unmask
enable_package "sys-libs/glibc" do
  version "2.7-r2"
end

package "sys-libs/glibc" do
  version "2.7-r2"
  action :install
end

enable_package "sys-devel/gcc" do
  version "4.2.4"
end

# Install the newly unmasked version
package "sys-devel/gcc" do
  version "4.2.4"
  action :install
end
