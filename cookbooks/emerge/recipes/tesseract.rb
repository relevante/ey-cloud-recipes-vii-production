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
enable_package "app-text/tesseract" do
  version "2.03"
end

# Install the newly unmasked version
package "app-text/tesseract" do
  version "2.03"
  action :install
end
