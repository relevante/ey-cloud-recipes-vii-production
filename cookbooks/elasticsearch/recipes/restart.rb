execute "ensure-elasticsearch-is-setup-with-monit" do 
  command "/usr/bin/monit reload"
end


execute "monit -g elasticsearch restart all" do
  action :run
end

execute "ensure-elasticsearch-is-setup-with-monit" do 
  command "/usr/bin/monit reload"
end
