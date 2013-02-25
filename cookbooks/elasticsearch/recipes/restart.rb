execute "ensure-elasticsearch-is-setup-with-monit" do 
  command "monit reload"
end

execute "restart-elasticsearch" do 
  command "sudo monit -g elasticsearch restart all"
end

execute "ensure-elasticsearch-is-setup-with-monit" do 
  command "monit reload"
end
