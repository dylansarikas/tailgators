unless Rails.env.production?
  namespace :dev do
    desc "Drop, create, migrate, seed database"
    task reset: [
      :environment,
      "db:drop",
      "db:create",
      "db:migrate",
      "db:seed",
      "dev:sample_data"] do
      puts "Reset environment"
    end

    desc "Add sample data"
    task sample_data: [
      :environment,
      "dev:sample_users",
      "dev:sample_hotels",
      "dev:sample_tailgates",
      "dev:sample_advices"
    ]

  end
end
