execute "ensure-elasticsearch-is-setup-with-monit" do 
  command "monit reload"
end

node[:applications].each do |app_name, data|
  execute "restart-elasticsearch" do 
    command %Q{ 
      echo "sleep 20 && monit -g elasticsearch restart all" | at now 
    }
  end
end
