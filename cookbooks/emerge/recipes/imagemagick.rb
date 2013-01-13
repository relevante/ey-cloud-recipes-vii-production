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

# Unmask version 6.7.8.8 of media-gfx/imagemagick
enable_package "media-gfx/imagemagick" do
  version "6.7.8.8"
end

# Install the newly unmasked version
package "media-gfx/imagemagick" do
  version "6.7.8.8"
  action :install
end
