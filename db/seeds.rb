### Stadiums ###
Stadium.create(latitude: '41.862366', longitude: '-87.617256', name: 'Soldier Field', team: 'Chicago Bears',
               image: 'soldier.jpg', description: "The Chicago Bears are a professional American football team based in Chicago, Illinois. Established in 1920, they are one of the oldest franchises in the National Football League. Known for their rich history, iconic navy blue and orange uniforms, and a strong defensive legacy, the Bears have won nine NFL Championships, including one Super Bowl. They play their home games at Soldier Field, located on the city's lakefront. The team is a beloved institution in Chicago, with a passionate and loyal fan base.", nick_name: 'bears', address: "1410 Special Olympics Dr, Chicago, IL 60605")
Stadium.create(latitude: '44.501308', longitude: '-88.062317', name: 'Lambeau Field', team: 'Green Bay Packers',
               image: 'lambeau.jpg', description: 'The Green Bay Packers are a professional American football team based in Green Bay, Wisconsin. Founded in 1919, they are the third-oldest franchise in the National Football League and the only non-profit, community-owned major league professional sports team in the United States. Known for their iconic green and gold uniforms, the Packers have won 13 NFL Championships, including four Super Bowls. They play their home games at Lambeau Field, renowned for its storied history and passionate fan base.', nick_name: 'packers', address: "1265 Lombardi Ave, Green Bay, WI 54304")
Stadium.create(latitude: '42.340115', longitude: '-83.046341', name: 'Ford Field', team: 'Detroit Lions',
               image: 'ford.jpg', description: 'The Detroit Lions are a professional American football team based in Detroit, Michigan. Established in 1930, they are a member of the National Football League. Known for their Honolulu blue and silver uniforms, the Lions have won four NFL Championships, all prior to the Super Bowl era. The team plays its home games at Ford Field in downtown Detroit. The Lions have a dedicated and resilient fan base, and their annual Thanksgiving Day game is a beloved NFL tradition.', nick_name: 'lions', address: "2000 Brush St, Detroit, MI 48226")
Stadium.create(latitude: '44.973774', longitude: '-93.258736', name: 'US Bank Stadium', team: 'Minnesota Vikings',
               image: 'usbank.jpg', description: 'The Minnesota Vikings are a professional American football team based in Minneapolis, Minnesota. Founded in 1960, they are a member of the National Football League. Known for their distinctive purple and gold uniforms and their Viking mascot, the team has a storied history and a passionate fan base. The Vikings have won numerous division titles and appeared in four Super Bowls. They play their home games at U.S. Bank Stadium, a state-of-the-art facility in downtown Minneapolis.', nick_name: 'vikings', address: "401 Chicago Ave, Minneapolis, MN 55415")
Stadium.create(latitude: '39.0490', longitude: '-94.4840', name: 'Arrowhead Stadium', team: 'Kansas City Chiefs',
               image: 'arrowhead.jpg', description: 'The Kansas City Chiefs are a professional American football team based in Kansas City, Missouri. Founded in 1960 as a charter member of the American Football League (AFL), the team joined the National Football League (NFL) in 1970 after the AFL-NFL merger. Known for their red and gold uniforms, passionate fan base, and iconic Arrowhead Stadium, the Chiefs have won multiple division titles and three Super Bowls, including the most recent in 2023. The team is renowned for its explosive offense and the leadership of its star quarterback, making them one of the  most formidable teams in recent years.', nick_name: 'chiefs', address: "1 Arrowhead Dr, Kansas City, MO 64129")
Stadium.create(latitude: '36.0909', longitude: '-115.1833', name: 'Allegiant Stadium', team: 'Las Vegas Raiders',
               image: 'allegiant.jpg', description: 'The Las Vegas Raiders are a professional American football team based in Las Vegas, Nevada. Originally founded in 1960 as the Oakland Raiders, the team has undergone several relocations, moving to Los Angeles and back to Oakland before settling in Las Vegas in 2020. Known for their iconic silver and black uniforms, the Raiders have a storied history with three Super Bowl championships and a fiercely loyal fan base. They play their home games at Allegiant Stadium, a state-of-the-art facility just off the Las Vegas Strip. The Raiders are celebrated for their rebellious image and intense rivalries.', nick_name: 'raiders', address: "3333 Al Davis Way, Las Vegas, NV 89118")

### Users ###
User.create(email: 'sample@example.com', password: 'password', username: 'pinballfan1')

### Bears Hotels ###
Hotel.create(name: 'The Congress Plaza Hotel', address: '520 South Michigan Avenue, Chicago, IL 60605',
             link: 'https://www.congressplazahotel.com/', description: "Step inside and experience an extraordinary piece of living history during your next visit to downtown Chicago at the Congress Plaza Hotel. This 'Landmark of Chicago Hospitality' has delighted business and leisure travelers for over a century.", stadium_id: 1)
Hotel.create(name: 'Marriott Marquis Chicago', address: '2121 South Prairie Avenue, Chicago, IL 60616',
             link: 'https://www.marriott.com/reservation/rateListMenu.mi?dclid=CLqxx9ON3ocDFTDQTwIdEJYk7A', description: "Treat yourself to a sophisticated stay at Marriott Marquis Chicago. Connected to McCormick Place, America's largest convention center, and just moments from many of the city's most celebrated destinations, our brand-new hotel is ideally suited for business and leisure travelers.", stadium_id: 1)
Hotel.create(name: 'Best Western Grant Park', address: '1100 S Michigan Ave, Chicago, IL 60605',
             link: 'https://www.bestwestern.com/en_US/book/hotel-rooms.14120.html?iata=00170230&ssob=BLPBM0001L&checkIn=2024-08-05&checkOut=2024-08-06&rooms=1&adults=2&children=0&utm_content=ba&refid=1716f31d-ee97-4df7-a2b3-b1c463c63c2a&cid=BLPBM0001L:tripadvisor:HDL:14120', description: 'Located in Chicago,IL, the Best Western Grant Park Hotel is sure to provide a peaceful and comforting home away from home for any traveler. Each Best Western hotel provides free internet access, giving guests the opportunity to check emails and surf the web, all from the comforts of their room or the business center.', stadium_id: 1)
Hotel.create(name: 'Embassy Suites River North', address: '600 North State Street, Chicago, IL 60654',
             link: 'https://www.hilton.com/en/book/reservation/rooms/?ctyhocn=CHIDWES&arrivalDate=2024-08-05&departureDate=2024-08-06&room1NumAdults=2&ta_refid=e95d19a1-fd5a-40c9-bf90-a3f59c0b404a&WT.mc_id=zLADA0WW1ES2PSH3TA4SEMTABL5HWB6CHIDWES7_310602136&dclid=CIap97SO3ocDFZv09QIdMVsHsg', description: 'Find our River North Chicago hotel right in the heart of downtown Chicago, within an eight-minute walk of Chicago Riverwalk and Navy Pier. The Chicago Loop, with Millennium Park, The Art Institute of Chicago, and Chicago Theatre, is less than a mile away. ', stadium_id: 1)
Hotel.create(name: 'Warwick Allerton', address: '701 N Michigan Avenue, Chicago, IL 60611',
             link: 'https://www.warwickhotels.com/warwick-allerton-chicago', description: "Glamour, revisited. The beautifully rejuvenated Warwick Allerton - Chicago offers charming accommodations at a storied address. Experience boutique ambience in one of The Windy City's grandest hotels.", stadium_id: 1)

### Packers Hotels ####
Hotel.create(name: 'Lighthouse Inn', address: '1515 Memorial Drive Two Rivers, Wisconsin 54241',
             link: 'https://www.lhinn.com/', description: 'Experience a truly relaxing Lake Michigan retreat. Our accommodations offer beautiful views overlooking Lakeshore Park and Lake Michigan.', stadium_id: 2)
Hotel.create(name: 'Lodge Kohler', address: '1950 S Ridge Rd, Green Bay, WI 54304-4125',
             link: 'https://www.lodgekohler.com/', description: 'Just 100 yards from Lambeau at the center of Titletown action, Lodge Kohler is unlike any other. Warm and spirited with sumptuous rooms, a fabulous spa, an indoor/outdoor restaurant and café, and a rooftop bar with best-in-class service.', stadium_id: 2)
Hotel.create(name: 'AmericInn by Wyndham', address: '2628 Manitowoc Rd, Green Bay, WI 54311-6572',
             link: 'https://www.wyndhamhotels.com/americinn/green-bay-wisconsin/americinn-lodge-and-suites-green-bay-east/overview', description: "Join us at AmericInn by Wyndham Green Bay, where you’ll have easy access to all of the area's best attractions. Score a ticket to a Packers game at Lambeau Field, and enjoy the great outdoors year-round.", stadium_id: 2)
Hotel.create(name: 'Bay Motel', address: '1301 S Military Ave, Green Bay, WI 54304-3096',
             link: 'https://www.baymotelgreenbay.com/', description: "Bay Motel & Family Restaurant began in 1958. Our cozy motel features 53 rooms nestled 1 mile from the Green Bay Packer's Lambeau field. Our family restaurant has home style cooking and is open for breakfast, lunch, and dinner.", stadium_id: 2)
Hotel.create(name: 'Home2 Suites by Hilton', address: '810 Morris Ave, Green Bay, WI 54304',
             link: 'https://www.hilton.com/en/book/reservation/rooms/?ctyhocn=GRBHTHT&arrivalDate=2024-08-04&departureDate=2024-08-05&room1NumAdults=2&ta_refid=e4a28901-fced-4779-aa80-029b514070b4&WT.mc_id=zLADA0WW1HT2PSH3TA4SEMTABL5HWB6GRBHTHT7_310602136', description: 'Come explore Home2 Suites by Hilton Green Bay. Our location is perfect for discovering what Green Bay has to offer. Packers fans will appreciate how close we are to the historic Lambeau Field.', stadium_id: 2)

### Lions Hotels ###
Hotel.create(name: 'Hotel David Whitney', address: 'One Park Ave, Detroit, MI 48226',
             link: 'https://hoteldavidwhitney.com/', description: 'Take your upcoming travel experience to the next level when you stay at Hotel David Whitney, Autograph Collection. Our boutique hotel is located within the historic David Whitney building in the heart of downtown Detroit.', stadium_id: 3)
Hotel.create(name: 'The Atheneum', address: '1000 Brush St Greektown, Detroit, MI 48226-2906',
             link: 'https://www.atheneumsuites.com/', description: 'For travelers visiting Detroit, The Atheneum is an excellent choice for rest and rejuvenation. Well-known for its charming environment and proximity to great restaurants and attractions, The Atheneum makes it easy to enjoy the best of Detroit.', stadium_id: 3)
Hotel.create(name: 'The Siren Hotel', address: '1509 Broadway St., Detroit, MI 48226-2114',
             link: 'https://ash.world/hotels/the-siren/', description: 'Finding an ideal romantic hotel in Detroit does not have to be difficult. Welcome to The Siren Hotel, a nice option for travelers like you.  Nearby landmarks such as Ford Field and Detroit-Windsor Tunnel make The Siren Hotel a great place to stay when visiting Detroit.', stadium_id: 3)
Hotel.create(name: 'Hollywood Casino Hotel', address: '1200 Saint Antoine Street, Detroit, MI 48226',
             link: 'https://www.hollywoodgreektown.com/', description: 'Step into a whole new world of excitement. Whether you’re looking for a relaxing getaway, an action-packed trip to our casino or an adventurous weekend on the town, we offer hotel packages for an unforgettable escape.', stadium_id: 3)
Hotel.create(name: 'The Shinola Hotel', address: '1400 Woodward Ave, Detroit, MI 48226-2002',
             link: 'https://www.shinolahotel.com/', description: 'The world’s first Shinola Hotel is Detroit’s new living room. Located in the heart of the city’s historic Woodward shopping district, this 129-room boutique hotel offers a completely original hospitality experience. ', stadium_id: 3)

### Vikings Hotels ###
Hotel.create(name: 'Hewing Hotel', address: '300 N Washington Avenue, Minneapolis, MN 55401',
             link: 'https://hewinghotel.com/', description: 'Hewing Hotel is uniquely tied to the rich history of Minneapolis and reflective of the most progressive neighborhood in town. The historic building has been refined, but not stripped of its former life as a farm implement warehouse.', stadium_id: 4)
Hotel.create(name: 'W Minneapolis - The Foshay', address: '821 Marquette Ave, Minneapolis, MN 55402-2929',
             link: 'https://www.marriott.com/reservation/rateListMenu.mi', description: "W Minneapolis - The Foshay is a luxury downtown hotel in Minneapolis, MN, featuring Art Deco style, contemporary rooms, high-tech features, and signature amenities. Guests can enjoy 360-degree views of downtown Minneapolis from the 30th Floor Observation Deck, dine at hotel restaurants, and explore the city's attractions, including Target Field and US Bank Stadium.", stadium_id: 4)
Hotel.create(name: 'Canopy by Hilton', address: '708 S 3rd Street, Minneapolis, MN 55415',
             link: 'https://www.hilton.com/en/book/reservation/rooms/?ctyhocn=MSPMIPY&arrivalDate=2024-08-31&departureDate=2024-09-01&room1NumAdults=2&ta_refid=f7b1a10a-3395-4a6a-a325-92288c019276&WT.mc_id=zLADA0WW1PY2PSH3TA4SEMTABL5HWB6MSPMIPY7_310602136', description: 'Hello and welcome to Canopy by Hilton Minneapolis - Mill District, an energizing new hotel in the East End. Formerly the Advance Thresher/Emerson-Newton Implement Company, this 1900s building has been rejuvenated as a stunning hotel connecting you to the best dining, culture, sports and nightlife in downtown Minneapolis.', stadium_id: 4)
Hotel.create(name: 'Radisson RED', address: '609 S 3rd St, Minneapolis, MN 55415',
             link: 'https://www.choicehotels.com/minnesota/minneapolis/radisson-red-hotels/mn290?adults=2&checkInDate=2024-08-31&checkOutDate=2024-09-01', description: "Culture lovers, art enthusiasts, serial shoppers and park runners unite at Radisson RED Minneapolis Downtown. Locked in a brotherly bond with its 'Twin City' of St Paul, Minneapolis is an outdoorsy city where nature - be it the looping Mississippi river, or its many parks and lakes - is never far away.", stadium_id: 4)
Hotel.create(name: 'Best Western Plus', address: '405 S 8th St, Minneapolis, MN 55404',
             link: 'https://www.bestwestern.com/en_US/book/hotel-rooms.24091.html?iata=00170230&ssob=BLPBM0001L&checkIn=2024-08-31&checkOut=2024-09-01&rooms=1&adults=2&children=0&utm_content=ba&refid=5b9dc132-6c4b-4698-b43d-e157a404a452&cid=BLPBM0001L:tripadvisor:HDL:24091', description: "At the Best Western Plus The Normandy Inn & Suites you're sure to find that little something extra. With our modern amenities and thoughtful design, the Best Western Plus The Normandy Inn & Suites will stand out among other hotels in Minneapolis,MN.", stadium_id: 4)

### Tailgates Bears ###
Tailgate.create(name: 'CHGO Bears Tailgate', address: '2200 S Wabash Ave, Chicago, IL, USA',
                link: 'https://allchgo.com/chgo-bears-tailgates/', description: 'All-inclusive tailgate experience gets you access to the biggest and best party in the Windy City! Enjoy tailgate food from Fire Water BBQ, brews from Goose Island, full bar games, and sounds from local DJs to keep the party going before the game.', stadium_id: 1)
Tailgate.create(name: 'Miller Lite Ultimate Tailgate', address: '1400 S Lake Shore Dr, Chicago, IL 60605',
                link: 'https://www.chicagobears.com/game-day/guide', description: 'The Miller Lite Ultimate Tailgate is located on the north side of Soldier Field on the Field Museum terrace and will be open two hours before kickoff running through one hour postgame. The Ultimate Tailgate, which is free and open to the public and will feature music, activities, appearances by the Chicago Bears Drumline.', stadium_id: 1)
Tailgate.create(name: '31st Street McCormick Place Lot B', address: '3050 Moe Dr, Chicago, IL 60616',
                link: 'https://www.chicagobears.com/game-day/parking-transportation-guide', description: 'To get the full experience of seeing the Chicago Bears play at Soldier Field, you need to spend some time before the game tailgating with other fans. This gives you the opportunity to spend an entire day engaged in football activities.', stadium_id: 1)

### Tailgates Packers ###
Tailgate.create(name: 'Johnsonville Tailgate', address: '1265 Lombardi Ave, Green Bay, WI 54304',
                link: 'https://www.packers.com/lambeau-field/johnsonville-tailgate-village', description: 'Located in the shadows of Lambeau Field, this 13, 242 square-foot temple has: a full kitchen, spacious bar, floor to ceiling windows, and overhead doors that open to a 4,300 square-foot party deck.  Listen to live music, enjoy great food and cold beverages and watch the game on any of the 35 plasma screens located throughout the Village.', stadium_id: 2)
Tailgate.create(name: 'Outside Lambeau Field Lot One', address: 'Lot 1, S Oneida St, Green Bay, WI 54304',
                link: 'https://www.packers.com/lambeau-field/parking', description: "Keep an eye out for the Lot One sign in Lambeau Field's parking lot, and you'll be greeted by a bustling gathering that welcomes fans of all kinds. Lot One is where you'll find devoted Packers enthusiasts who are dedicated to elevating the tailgating experience to new heights.", stadium_id: 2)
Tailgate.create(name: 'Meet at The Bar Tailgate', address: '2001 Holmgren Way, Green Bay, Wisconsin 54304',
                link: 'https://www.meetatthebar.com/gameday.html', description: 'Located just three blocks from Lambeau Field, The Bar - Holmgren Way is your official Packers headquarters.', stadium_id: 2)

### Tailgates Lions ###
Tailgate.create(name: 'Bullseye Event Group Tailgate', address: '2934 Russell Street, Detroit MI 48207',
                link: 'https://bullseyeeventgroup.com/the-lions-vip-tailgate/#lions-tickets', description: 'Bullseye Event Group offers you the easiest & the best Lions gameday experience out there. Equipped with 3 bars, multiple soft leather lounge seating areas and plenty of TV’s for your ESPN gameday coverage.', stadium_id: 3)
Tailgate.create(name: 'Detroit Lions Pride Plaza', address: '2000 Brush St, Detroit, MI 48226',
                link: 'https://www.detroitlions.com/game-day/pride-plaza-offseason', description: "Start your pre-game party at Pride Plaza on Brush Street, the Detroit Lions' official tailgate presented by Bud Light.  Located on Brush Street the tailgate offers exciting new interactive fan games and flat screen TVs to catch the pre-game show. ", stadium_id: 3)
Tailgate.create(name: 'Eastern Market Lot', address: '2934 Russell Street, Detroit MI 48207',
                link: 'https://easternmarket.org/markets/events/detroit-lions-eastern-market-tailgating-december', description: "Tailgating fans know that Eastern Market is the official hot spot for Lions parties. For years, fans have taken over the market's parking lots and lined Gratiot Avenue with food for grilling and footballs", stadium_id: 3)

### Tailgates Vikings ###
Tailgate.create(name: 'Vikings Village Longhouse', address: '401 Chicago Ave, Minneapolis, MN 55415',
                link: 'https://www.vikings.com/stadium/pre-game-fan-tailgate', description: 'The Vikings Village is the perfect place to get the party started before kickoff at U.S. Bank Stadium. Enjoy live entertainment from the Pepsi Sound the North Stage or grab a beverage from Molson Coors in the Pendleton Whiskey Longhouse with friends.', stadium_id: 4)
Tailgate.create(name: 'Vikings Tailgate Garden', address: '425 Portland Ave S, Minneapolis, MN 55415',
                link: 'https://www.vikings.com/stadium/pre-game-fan-tailgate', description: 'The Vikings Tailgate Garden in the Commons Park outside U.S. Bank Stadium is your premier tailgate location on game day. Enjoy local food trucks and your favorite Molson Coors products.', stadium_id: 4)
Tailgate.create(name: 'Purple Lot Tailgate', address: 'Stadium Parking Ramp 740 S 4th St.',
                link: 'https://www.usbankstadium.com/plan-your-visit/tailgating', description: 'Tailgating at the Purple Lot for the Minnesota Vikings is an electrifying experience that embodies the spirit of Vikings fandom. Located just steps away from U.S. Bank Stadium, the Purple Lot is a prime tailgating spot where fans gather to celebrate before the game. ', stadium_id: 4)

### Advices ###
Advice.create(adviceable_id: 4, adviceable_type: Stadium, body: 'Really good food', user_id: 1)

### Restaurants ###
Restaurant.create(name: "Ricobene's",
                  description: "For decades, Ricobene's has been feeding folks the kind of stick-to-the-ribs, succulent sustenance you can only find in Chicago. Enjoy!", link: 'https://www.ricobenespizza.com/', address: '252 W 26th St, Chicago, IL 60616', stadium_id: 1)
Restaurant.create(name: 'Taverne in the Sky',
                  description: 'Located on the fifth floor of Lodge Kohler, Taverne In the Sky provides a one of a kind experience against the backdrop of stunning panoramic views of historic Lambeau Field.', link: 'https://www.lodgekohler.com/taverne-in-the-sky-menu', address: '1950 S Ridge Rd Lodge Kohler, Green Bay, WI 54304-4125', stadium_id: 2)
Restaurant.create(name: 'Twin City Grills',
                  description: 'Located on the first floor of the Mall of America, Twin City Grill is an American grill offering a comfortable environment with homemade comfort foods, ideal for your shopping break. ', link: 'https://www.twincitygrillrestaurant.com/', address: '130 N Garden 1st Floor, Mall of America, Bloomington, MN 55425-5517', stadium_id: 3)
Restaurant.create(name: 'Wright & Company',
                  description: 'Wright & Company is a gastro-bistro located on the second floor of the historic Wright-Kay building in downtown Detroit.', link: 'https://www.wrightdetroit.com/', address: '1500 Woodward Ave Fl 2, Detroit, MI 48226-2005', stadium_id: 4)

### Lots ###
Lot.create(name: 'Official Bears Parking Lot', description: 'Official Stadium Lot for Chicago Bears',
           link: 'https://www.chicagobears.com/game-day/parking-transportation-guide', address: '', stadium_id: 1)
Lot.create(name: 'Official Packers Parking Lot', description: 'The Official Lots for Lambeau Field',
           link: 'https://www.packers.com/lambeau-field/parking', address: '', stadium_id: 2)
Lot.create(name: 'Official Lions Parking Lots', description: 'Official Lots for Ford Field',
           link: 'https://www.fordfield.com/plan-your-visit/parking', address: '', stadium_id: 3)
Lot.create(name: 'Official Viking Parking Lots', description: 'Official US Bank Stadium Lots',
           link: 'https://www.usbankstadium.com/plan-your-visit/directions', address: '', stadium_id: 4)
