execute "ensure-elasticsearch-is-setup-with-monit" do 
  command "monit reload"
end

execute "restart-elasticsearch" do 
  user "root"
  command "monit -g elasticsearch restart all"
end

execute "ensure-elasticsearch-is-setup-with-monit" do 
  command "monit reload"
end
