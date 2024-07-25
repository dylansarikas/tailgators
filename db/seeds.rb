# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Stadium.create(latitude: "41.862366", longitude: "-87.617256", name: "Soldier Field", team: "Chicago Bears", stadium: "soldier.jpg")
Stadium.create(latitude: "44.501308", longitude: "-88.062317.", name: "Lambeau Field", team: "Green Bay Packers", stadium: "lambeau.jpg")
Stadium.create(latitude: "42.340115", longitude: "-83.046341", name: "Ford Field", team: "Detroit Lions", stadium: "ford.jpg")
Stadium.create(latitude: "44.973774", longitude: "-93.258736", name: "U.S. Bank Stadium", team: "Minnesota Vikings", stadium: "usbank.jpg")

User.create(email: "hungusbungus@example.com", password: "password", username: "hungusbungus")

Hotel.create(name: "Lighthouse Inn", address: "1515 Memorial Drive Two Rivers, Wisconsin 54241", link: "https://www.lhinn.com/", stadium_id: 2)
Hotel.create(name: "Country Inn and Suites Elk Grove Village", address: "1160 W Devon Ave, Elk Grove Village, IL 60007", stadium_id: 1)

Tailgate.create(name: "Lambeau Field Lot 1 Tailgate", location: "Lot 1, S Oneida St, Green Bay, WI 54304", stadium_id: 2)

Advice.create(adviceable_id: 4, adviceable_type: Stadium, body: "Really good food", user_id: 1)
