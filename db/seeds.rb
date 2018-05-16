puts 'Cleaning database...'
Car.destroy_all
User.destroy_all
kevin = User.create!(email: "kevin@wanadoo.com", password: "kekedu38")




puts 'Creating cars...'
cars_attributes = [
  {
    user: kevin,
    name: "La ratisseuse",
    model: "Citroen BX",
    photo_url: "http://up.autotitre.com/f909b06733.jpg",
    description: "Jantes targa racing 15 pouces, rétros m3, hp oxygen 3 voies 170w source sony s2200 cdr ampli boa 800w + caisson accoustique 1000w jbl"
  },
  {
    user: kevin,
    name: "Le lézard",
    model: "Peugeot 206",
    photo_url: "https://pre00.deviantart.net/2f0c/th/pre/f/2015/159/6/1/driftcup42_by_psykomysik-d8wie98.jpg",
    description: "Néon cup, jantes atomik 17 pouces, son surround, portes papillon, prises d'air racing"
  },
  {
    user: kevin,
    name: "Barbie rocket",
    model: "Renault Clio",
    photo_url: "http://hordeofwolves.free.fr/gal/magny_cours_2005/camping/renault%20clio%20aerograph%20f&f2.JPG",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "Tribal show",
    model: "VW Golf",
    photo_url: "https://i.ytimg.com/vi/B4MQzPXZpRE/maxresdefault.jpg",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    photo_url: "http://lvdneng.rosselcdn.net/sites/default/files/dpistyles_v2/ena_16_9_extra_big/2016/07/17/node_24265/804851/public/2016/07/17/B979228559Z.1_20160717104722_000%2BGKB77Q12H.1-0.jpg?itok=CcyKWq1B",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "Camping tuning car",
    model: "Peugeot 206 CC",
    photo_url: "http://eeena.rosselcdn.net/sites/default/files/dpistyles_v2/ena_16_9_extra_big/2017/06/29/node_30124/2062894/public/2017/06/29/B9712462378Z.1_20170629092409_000%2BGJD9BH6L9.1-0.jpg?itok=9UzqmqQq",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "Orange mékanik",
    model: "Peugeot 106",
    photo_url: "http://image.noelshack.com/fichiers/2014/37/1410731648-expo-tuning.jpg",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "Mistery machine",
    model: "Fiat Multipla",
    photo_url: "http://images.forum-auto.com/mesimages/631940/775153461.jpg",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "Méga Van",
    model: "Ford Gran Tourneo",
    photo_url: "http://images.forum-auto.com/mesimages/1067822/IMG44711.jpg",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  }
]
Car.create!(cars_attributes)
puts 'Finished!'




puts 'Creating bookings...'
kevina = User.create!(email: "kevina@wanadoo.com", password: "kekedu38")
cartest = Car.last

bookings_attributes = [
 {
   car: cartest,
   user: kevina,
   start_time: Date.new(2018,05,15),
   end_time: Date.new(2018,05,18)
 },
 {
   car: cartest,
   user: kevina,
   start_time: Date.new(2018,05,16),
   end_time: Date.new(2018,05,24)
 }
]
Booking.create!(bookings_attributes)
puts 'Finished!'
