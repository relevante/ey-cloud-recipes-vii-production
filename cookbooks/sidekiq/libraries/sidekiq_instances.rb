class Chef
  class Recipe
    # Does this instance run sidekiq?
    def sidekiq_instance?
      role = node[:instance_role]
      role == 'app' || role == 'app_master' || role == 'solo' || role == 'eylocal' || (role == 'util' && node[:name] =~ /^sidekiq/)
    end
  end
end