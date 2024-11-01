unless Rails.env.production?
  namespace :dev do
    desc 'Drop, create, migrate, seed database'
    task reset: [
      :environment,
      'db:drop',
      'db:create',
      'db:migrate',
      'db:seed'
    ] do
      puts 'Reset environment'
    end

    desc 'Deletes data, not database'
    task soft_reset: :environment do
      Advice.destroy_all
      User.destroy_all
      Hotel.destroy_all
      Tailgate.destroy_all
    end

    desc 'Add sample data'
    task sample_data: [
      :environment,
      'dev:sample_users',
      'dev:sample_hotels',
      'dev:sample_tailgates',
      'dev:sample_advices'
    ]

    desc 'Add sample users'
    task sample_users: :environment do
      11.times do
        User.create(
          email: "#{Faker::Name.first_name.downcase}@example.com",
          password: 'password',
          username: Faker::Games::Fallout.character.downcase.gsub(/[^0-9a-z]/i, '').to_s
        )
      end
      puts 'Created 11 Users'
    end

    desc 'Add sample hotels'
    task sample_hotels: :environment do
      20.times do
        Hotel.create(
          name: "The #{Faker::FunnyName.name} Hotel",
          link: 'google.com',
          address: Faker::Address.full_address.to_s,
          stadium_id: Stadium.all.sample.id
        )
      end
      puts 'Created 20 Hotels'
    end

    desc 'Add sample tailgates'
    task sample_tailgates: :environment do
      20.times do
        Tailgate.create(
          name: "#{Faker::Fantasy::Tolkien.location} Tailgate",
          address: Faker::Address.full_address.to_s,
          stadium_id: Stadium.all.sample.id
        )
      end
      puts 'Created 20 Tailgates'
    end

    desc 'Add sample advices'
    task sample_advices: :environment do
      types = [Stadium, Hotel, Tailgate]
      100.times do
        random = types.sample
        Advice.create(
          body: Faker::Movie.quote.to_s,
          user_id: User.all.sample.id,
          adviceable_id: random.all.sample.id,
          adviceable_type: random
        )
      end
      puts 'Created 100 Advices'
    end
  end
end
