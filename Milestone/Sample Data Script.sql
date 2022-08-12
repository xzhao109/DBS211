-- order of table create same as order of data insert
-- pls don't change the insertion order

SET DEFINE OFF; 
-- add this to avoid Variable Substitution

-- Insert Table Data --
INSERT ALL
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0001', 'Schmitt', 'Keith', 'dmurphy@classicmodelcars.com', 'Nantes', 'F', '13-10-01', 4370980452)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0002', 'King', 'Isabel', 'mpatterso@classicmodelcars.com', 'Las Vegas', 'M', '01-02-20', 2125557413)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0003', 'Ferguson', 'Martine', 'jfirrell@classicmodelcars.com', 'Melbourne', 'M', '11-11-25', 2155551555)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0004', 'Labrune', 'Marie', 'wpatterson@classicmodelcars.com', 'Nantes', 'M', '09-07-28', 6505556809)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0005', 'Bergulfsen', 'Jerry', 'gbondur@classicmodelcars.com', 'Stavern', 'M', '05-03-19', 2035557845)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0006', 'Nelson', 'Julie', 'abow@classicmodelcars.com', 'Rafael', 'F', '09-07-28', 6129411155)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0007', 'Piestrzeniewicz', 'Mory', 'ljennings@classicmodelcars.com', 'Warszawa', 'F', '10-01-04', 4970707424)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0008', 'Keitel', 'Michael', 'lthompson@classicmodelcars.com', 'Frankfurt', 'M', '07-12-25', 5222511555)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0009', 'Murphy', 'Matti', 'jfirrelli@classicmodelcars.com', 'San Francisco', 'F', '06-05-15', 6175555555)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0010', 'Lee', 'Rachel', 'spatterson@classicmodelcars.com', 'NYC', 'M', '03-09-23', 2035552570)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0011', 'Freyre', 'Dean', 'ftseng@classicmodelcars.com', 'Madrid', 'M', '09-08-07', 6245423634)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0012', 'Berglund', 'Leslie', 'gvanauf@classicmodelcars.com', 'Taipei', 'F', '14-11-26', 2125551500)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0013', 'Petersen', 'Elizabeth', 'lbondur@classicmodelcars.com', 'Kobenhavn', 'F', '15-10-17', 6902374093)	
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0014', 'Saveley', 'Yoshi', 'ghernande@classicmodelcars.com', 'Lyon', 'M', '08-05-21', 4978690724)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0015', 'Natividad', 'Miguel', 'pcastillo@classicmodelcars.com', 'Singapore', 'F', '11-01-11', 4907690725)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0016', 'Young', 'Julie', 'lbott@classicmodelcars.com', 'NYC', 'M', '09-09-09', 6175558428)	
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0017', 'Leong', 'Brydey', 'bjones@classicmodelcars.com', 'Allentown', 'M', '03-12-03', 2950768903)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0018', 'Hashimoto', 'Jeff', 'afixter@classicmodelcars.com', 'Burlingame', 'F', '09-10-25', 2597569045)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0019', 'Victorino', 'Mike', 'pmarsh@classicmodelcars.com', 'Singapore', 'F', '01-05-19', 6175557555)
INTO users (userID, lastName, firstName, email, city, gender, birthday, phone) VALUES ('0020', 'Oeztan', 'Eduardo',  'tking@classicmodelcars.com', 'Bergen', 'M', '08-04-28', 6265557265)
SELECT * FROM dual;

--  line:id 0006 -- too many values -- already delete
--  line:id 0008 -- not enough values -- already add
--  unique constraint error -- alreday modify duplicated value (email address)


INSERT ALL
INTO destination (DestinationID, DestinationName, description, location) VALUES ('AB', 'ALBERTA', 'Its landscape encompasses mountains, prairies, desert badlands and vast coniferous forests. It has more than 600 lakes, and rich mineral deposits.', 'Western Canada')
INTO destination (DestinationID, DestinationName, description, location) VALUES ('BC', 'BRITISH COLUMBIA', 'It is defined by its Pacific coastline and mountain ranges. Nature areas like Glacier National Park offer hiking and biking trails, as well as campgrounds.', 'Westernmost Canada')
INTO destination (DestinationID, DestinationName, description, location) VALUES ('MB', 'MANITOBA', 'Manitoba is a Canadian province bordered by Ontario to the east and Saskatchewan to the west. Its landscape of lakes and rivers, mountains, forests and prairies stretches from northern Arctic tundra to Hudson Bay in the east and southern farmland.', 'Central Canada')
INTO destination (DestinationID, DestinationName, description, location) VALUES ('NB', 'NEW BRUNSWICK', 'It is one of the three Maritime provinces and one of the four Atlantic provinces. It is the only province with both English and French as its official languages.', 'East Canada')
INTO destination (DestinationID, DestinationName, description, location) VALUES ('NL', 'NEWFOUNDLAND and LABRADOR', 'On Newfoundland island, the Norse archaeological site L''Anse aux Meadows is the reputed settlement of Viking explorer Leif Erikson. Gros Morne National Park, on the Gulf of St Lawrence, has cliffs, waterfalls and glacial fjords.', 'East Canada')
INTO destination (DestinationID, DestinationName, description, location) VALUES ('NT', 'NORTHWEST TERRITORIES', 'The Northwest Territories of Canada include the regions of Dehcho, North Slave, Sahtu, South Slave and Inuvik. Their remote landscape encompasses forest, mountains, Arctic tundra and islands in the Canadian Arctic Archipelago.', 'West North')
INTO destination (DestinationID, DestinationName, description, location) VALUES ('NS', 'NOVA SCOTIA', 'It is one of the three Maritime provinces and one of the four Atlantic provinces. Nova Scotia is Latin for New Scotland.', 'East Canada')
INTO destination (DestinationID, DestinationName, description, location) VALUES ('NU', 'NUNAVUT', 'Nunavut is a massive, sparsely populated territory of northern Canada, forming most of the Canadian Arctic Archipelago. Its islands have expanses of tundra, craggy mountains and remote villages, accessible only by plane or boat.', 'Northern Canada')
INTO destination (DestinationID, DestinationName, description, location) VALUES ('ON', 'ONTARIO', 'It''s home to Ottawa, Canada''s capital, known for Parliament Hill''s Victorian architecture and the National Gallery, featuring Canadian and indigenous art.', 'East-central Canada')
INTO destination (DestinationID, DestinationName, description, location) VALUES ('PE', 'PRINCE EDWARD ISLAND', 'Prince Edward Island is one of eastern Canada''s maritime provinces, off New Brunswick and Nova Scotia in the Gulf of St. Lawrence.', 'Eastern Canada')
INTO destination (DestinationID, DestinationName, description, location) VALUES ('QC', 'QUEBEC', 'Québec is a predominantly French-speaking province in eastern Canada with 2 vibrant cities in its south, connected by the Chemin du Roy highway along the Saint Lawrence River.', 'Eastern Canada')
INTO destination (DestinationID, DestinationName, description, location) VALUES ('SK', 'SASKATCHEWAN', 'Saskatchewan is a Canadian province that borders the United States to the south. Grassland covers its southern plains, and to the north are the rugged rock of the Canadian Shield plateau, coniferous forests, rivers and lakes.', 'Middle Canada')
INTO destination (DestinationID, DestinationName, description, location) VALUES ('YT', 'YUKON', 'The Yukon, a territory in northwest Canada, is wild, mountainous and sparsely populated. Kluane National Park and Reserve includes Mount Logan, Canada''s highest peak, as well as glaciers, trails and the Alsek River.', 'West North')
SELECT * FROM dual;


INSERT ALL
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0001', 'ON', 'Casa Loma', 'Casa Loma is a Gothic Revival castle-style mansion and garden in midtown Toronto, Ontario, Canada, that is now a historic house museum and landmark.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0002', 'ON', 'Niagara Falls', 'Canada''s most famous natural attraction, bringing in millions of visitors each year. Located just over an hour''s drive from Toronto, along the American border, these massive falls drop approximately 57 meters. You can see the falls at an astoundingly close distance from several key points.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0003', 'AB', 'Banff National Park & the Rocky Mountains', 'Banff National Park lies in the heart of the majestic Rocky Mountains in the province of Alberta, and showcases some of Canada''s most beautiful scenery. Turquoise-colored lakes, snowcapped peaks, and glaciers are all easily accessible in this stunning park.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0004', 'ON', 'Toronto''s CN Tower', 'On the shores of Lake Ontario in Canada''s biggest city is the iconic CN Tower, one of Canada''s most famous landmarks. The tower stands an impressive 553 meters high and dominates the skyline.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0005', 'QC', 'Old Quebec', 'Old Quebec is a UNESCO World Heritage Site and one of Canada''s historic gems. Spread across the Upper and Lower Town of Quebec, this area contains the city''s most historic buildings.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0006', 'BC', 'Whistler', 'Whistler has always been an important winter sports area, it has also developed into a popular summer destination, with golf, mountain biking, and a lively town atmosphere no matter when you visit.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0007', 'ON', 'Ottawa''s Parliament Hill', 'Ottawa''s Parliament Hill stands high above the Ottawa River and is graced by the Neo-Gothic-style Parliament buildings built in the last half of the 19th century.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0008', 'NL', 'St. John''s Signal Hill National Historic Site', 'At the entrance to St. John''s harbor, overlooking the city and sea, is Signal Hill National Historic Site. It was here, in 1901, that the first wireless transatlantic signal was received.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0009', 'QC', 'Old Montreal', 'Old Montreal, lined with lovely historic buildings, is a place to go for great shopping and fine dining. While Montreal itself is a vibrant modern city, Old Montreal, down by the waterfront, is where you''ll want to go to soak up the atmosphere.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0010', 'MB', 'Polar Bears of Churchill', 'Manitoba, One of Canada''s most unique attractions is the polar bear migration that sees these beautiful creatures make their way from land out onto the ice in Hudson Bay, near the town of Churchill in Northern Manitoba.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0011', 'BC', 'Vancouver Island', 'Most people head to Victoria, BC''s capital city, for sightseeing and culture, but if you head north into the wild and remote landscapes, the island holds some unexpected and unforgettable experiences.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0012', 'NB', 'Bay of Fundy', 'The Bay of Fundy, located in Eastern Canada in between New Brunswick and Nova Scotia, is known for its amazing tides.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0013', 'BC', 'Victoria''s Inner Harbour', 'Few Canadian cities have done such a beautiful job of developing their waterfront area as Victoria and its Inner Harbour.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0014', 'NL', 'Gros Morne National Park', 'Newfoundland''s Gros Morne National Park is more remote than many of Canada''s most popular national parks, but worth the effort to discover this beautiful landscape of mountains and fjords.')	
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0015', 'BC', 'Vancouver''s Stanley Park', 'One of Vancouver''s greatest treasures is the 405-hectare Stanley Park, conveniently located on the west side of the downtown area.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0016', 'AB', 'Calgary Stampede', 'This 10-day affair is one of the most widely anticipated events in Western Canada, with many locals and summertime travelers planning their holidays around the Calgary Stampede.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0017', 'MB', 'Canadian Museum for Human Rights', 'Winnipeg''s newest major attraction, which has drawn both national and international attention, is the Canadian Museum for Human Rights.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0018', 'BC', 'The Okanagan Valley', 'Locals who live in Penticton and Kelowna like to say that the Okanagan Valley is located on the warm side of the mountains from neighboring Alberta.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0019', 'SK', 'Cypress Hills Interprovincial Park', 'The province of Saskatchewan and Cypress Hills Interprovincial Park in particular, are often overlooked as places to visit in Canada.')
INTO attraction (attractionID, destinationID, attractionName, attractionDesc) VALUES ('A0020', 'AB', 'Royal Tyrrell Museum in Drumheller', 'One of the world''s premier dinosaur museums, the Royal Tyrrel is not to be missed. Incredible displays of dinosaurs found nearby are impressively showcased in a world-class setting.')
SELECT * FROM dual;


INSERT ALL
INTO transporttype (transportType, attractionID, ticketFare, travelTime) VALUES ('Airplane', 'A0001', 10, '2023-10-23')
INTO transporttype (transportType, attractionID, ticketFare, travelTime) VALUES ('Train', 'A0002', 15, '2013-10-24')
INTO transporttype (transportType, attractionID, ticketFare, travelTime) VALUES ('Bus', 'A0003', 5, '2023-03-08')
INTO transporttype (transportType, attractionID, ticketFare, travelTime) VALUES ('Subway', 'A0004', 20, '2012-10-26')
INTO transporttype (transportType, attractionID, ticketFare, travelTime) VALUES ('Boat', 'A0005', 35, '2023-10-27')
INTO transporttype (transportType, attractionID, ticketFare, travelTime) VALUES ('Car', 'A0006', 40, '2022-10-28')
INTO transporttype (transportType, attractionID, ticketFare, travelTime) VALUES ('Shuttle Bus', 'A0007', 100, '2023-05-01')
SELECT * FROM dual;

-- already remove hh:mm:ss


INSERT ALL
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0001', '0001', 753, 906)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0002', '0002', 457, 272)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0003', '0003', 221, 232)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0004', '0004', 133, 492)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0005', '0005', 715, 242)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0006', '0006', 696, 528)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0007', '0007', 983, 382)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0008', '0008', 131, 817)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0009', '0009', 698, 524)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0010', '0010', 232, 967)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0011', '0011', 717, 511)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0012', '0012', 203, 265)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0013', '0013', 926, 859)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0014', '0014', 100, 635)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0015', '0015', 812, 130)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0016', '0016', 218, 219)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0017', '0017', 863, 379)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0018', '0018', 424, 455)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0019', '0019', 646, 268)
INTO attractionreview (attractionID, userID, dislikes, likes) VALUES ('A0020', '0020', 166, 172)
SELECT * FROM dual;