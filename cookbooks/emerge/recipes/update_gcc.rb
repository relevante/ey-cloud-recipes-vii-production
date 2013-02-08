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
enable_package "sys-devel/gcc" do
  version "4.3.2"
end

# Install the newly unmasked version
package "sys-devel/gcc" do
  version "4.3.2"
  action :install
end
