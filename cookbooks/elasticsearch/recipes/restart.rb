execute "ensure-elasticsearch-is-setup-with-monit" do 
  command "/usr/bin/monit reload"
end

execute "restart-elasticsearch" do 
  user "root"
  command "/usr/bin/monit -g elasticsearch restart all"
end
