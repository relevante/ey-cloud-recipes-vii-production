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

package "app-text/poppler" do
  version "0.8.7"
  action :install
end

package "app-text/poppler-data" do
  version "0.2.0"
  action :install
end