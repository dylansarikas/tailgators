# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Stadium.create(latitude: "41.862366", longitude: "-87.617256", name: "Soldier Field", team: "Chicago Bears", image: "soldier.jpg", description: "The Chicago Bears are a professional American football team based in Chicago, Illinois. Established in 1920, they are one of the oldest franchises in the National Football League. Known for their rich history, iconic navy blue and orange uniforms, and a strong defensive legacy, the Bears have won nine NFL Championships, including one Super Bowl. They play their home games at Soldier Field, located on the city's lakefront. The team is a beloved institution in Chicago, with a passionate and loyal fan base.")
Stadium.create(latitude: "44.501308", longitude: "-88.062317.", name: "Lambeau Field", team: "Green Bay Packers", image: "lambeau.jpg", description: "The Green Bay Packers are a professional American football team based in Green Bay, Wisconsin. Founded in 1919, they are the third-oldest franchise in the National Football League and the only non-profit, community-owned major league professional sports team in the United States. Known for their iconic green and gold uniforms, the Packers have won 13 NFL Championships, including four Super Bowls. They play their home games at Lambeau Field, renowned for its storied history and passionate fan base.")
Stadium.create(latitude: "42.340115", longitude: "-83.046341", name: "Ford Field", team: "Detroit Lions", image: "ford.jpg", description: "The Detroit Lions are a professional American football team based in Detroit, Michigan. Established in 1930, they are a member of the National Football League. Known for their Honolulu blue and silver uniforms, the Lions have won four NFL Championships, all prior to the Super Bowl era. The team plays its home games at Ford Field in downtown Detroit. The Lions have a dedicated and resilient fan base, and their annual Thanksgiving Day game is a beloved NFL tradition.")
Stadium.create(latitude: "44.973774", longitude: "-93.258736", name: "US Bank Stadium", team: "Minnesota Vikings", image: "usbank.jpg", description: "The Minnesota Vikings are a professional American football team based in Minneapolis, Minnesota. Founded in 1960, they are a member of the National Football League. Known for their distinctive purple and gold uniforms and their Viking mascot, the team has a storied history and a passionate fan base. The Vikings have won numerous division titles and appeared in four Super Bowls. They play their home games at U.S. Bank Stadium, a state-of-the-art facility in downtown Minneapolis.")

User.create(email: "hungusbungus@example.com", password: "password", username: "hungusbungus")

Hotel.create(name: "Lighthouse Inn", address: "1515 Memorial Drive Two Rivers, Wisconsin 54241", link: "https://www.lhinn.com/", stadium_id: 2)
Hotel.create(name: "Country Inn and Suites Elk Grove Village", address: "1160 W Devon Ave, Elk Grove Village, IL 60007", stadium_id: 1)

Tailgate.create(name: "Lambeau Field Lot 1 Tailgate", location: "Lot 1, S Oneida St, Green Bay, WI 54304", stadium_id: 2)
Tailgate.create(name: "CHGO Sports Bears Tailgate", location: "2200 S Wabash Ave, Chicago, IL, USA", stadium_id: 1)
Tailgate.create(name: "Detroit Lions Eastern Market Tailgating", location: "Eastern Market 2934 Russell Street 48208", stadium_id: 3)
Tailgate.create(name: "Vikings Tailgate Garden", location: "425 Portland Ave S, Minneapolis, MN 55415", stadium_id: 4)

Advice.create(adviceable_id: 4, adviceable_type: Stadium, body: "Really good food", user_id: 1)
