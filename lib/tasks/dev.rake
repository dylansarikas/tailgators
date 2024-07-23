unless Rails.env.production?
  namespace :dev do
    desc "Drop, create, migrate, seed database"
    task hard_reset: [
      :environment,
      "db:drop",
      "db:create",
      "db:migrate",
      "db:seed",
      "dev:sample_data"] do
      puts "Reset environment"
    end

    desc "Deletes data, not database"
    task soft_reset: :environment do
      Advice.destroy_all
      User.destroy_all
      Hotel.destroy_all
      Tailgate.destroy_all
    end

    desc "Add sample data"
    task sample_data: [
      :environment,
      "dev:sample_users",
      "dev:sample_hotels",
      "dev:sample_tailgates",
      "dev:sample_advices"
    ]

    desc "Add sample users"
    task sample_users: :environment do
      11.times do
        User.create(
          email: "#{Faker::Name.first_name.downcase}@example.com",
          password: "password",
          username: "#{Faker::Games::Fallout.character.downcase.gsub(/[^0-9a-z]/i, "")}"
        )
        puts "Created 11 Users"
      end
    end

    desc "Add sample hotels"
    task sample_hotels: :environment do
      20.times do
        puts "wow"
      end
    end

    desc "Add sample tailgates"
    task sample_tailgates: :environment do
      11.times do
        puts "wow"
      end
    end

    desc "Add sample advices"
    task sample_advices: :environment do
      11.times do
        puts "wow"
      end
    end

  end
end
