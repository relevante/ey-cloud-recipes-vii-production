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

require_recipe "emerge::update_gcc"

# Unmask
enable_package "media-gfx/graphicsmagick" do
  version "1.3.5"
end

# Install the newly unmasked version
package "media-gfx/graphicsmagick" do
  version "1.3.5"
  action :install
end
