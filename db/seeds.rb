puts 'Cleaning database...'
Booking.destroy_all
Car.destroy_all
User.destroy_all
kevin = User.create!(email: "kevin@wanadoo.com", password: "kekedu38")
etienne = User.create!(email: "etienne@lebolideur.com", password: "vegamissyl")




puts 'Creating cars...'
cars_attributes = [
  {
    user: kevin,
    name: "La ratisseuse",
    model: "Citroen BX",
    address: "107 Cours Balguerie Stuttenberg, Bordeaux",
    photo_url: "http://up.autotitre.com/f909b06733.jpg",
    description: "Jantes targa racing 15 pouces, rétros m3, hp oxygen 3 voies 170w source sony s2200 cdr ampli boa 800w"
  },
  {
    user: etienne,
    address: "44 avenue Maurice Martin, Arcachon",
    name: "Vega Missyl",
    model: "Ford Sierra",
    photo_url: "http://img.over-blog-kiwi.com/0/93/23/39/20160120/ob_239159_sans-titre-1.jpg",
    description: "935 chevaux, 80 kilos d'aileron, 380 km/h quand l'accélération n'est qu'à moitié poussée"
  },
  {
    user: kevin,
    name: "Le mante religieuse",
    model: "Peugeot 206",
    address: "60 rue Beaufleury, Bordeaux",
    photo_url: "https://pre00.deviantart.net/2f0c/th/pre/f/2015/159/6/1/driftcup42_by_psykomysik-d8wie98.jpg",
    description: "Néon cup, jantes atomik 17 pouces, son surround, portes papillon, prises d'air racing"
  },
  {
    user: kevin,
    address: "112 avenue Marcelin Berthelot, Bordeaux",
    name: "Barbie rocket",
    model: "Renault Clio",
    photo_url: "http://hordeofwolves.free.fr/gal/magny_cours_2005/camping/renault%20clio%20aerograph%20f&f2.JPG",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    address: "11 rue Claude Monet, 16000 Angoulême",
    name: "Tribal show",
    model: "VW Golf",
    photo_url: "https://i.ytimg.com/vi/B4MQzPXZpRE/maxresdefault.jpg",
    description: "Peinture tribale, giga caisson extérieur, jantes shuriken"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    address: "4 allée des Bruyères 56400 Brech",
    photo_url: "http://lvdneng.rosselcdn.net/sites/default/files/dpistyles_v2/ena_16_9_extra_big/2016/07/17/node_24265/804851/public/2016/07/17/B979228559Z.1_20160717104722_000%2BGKB77Q12H.1-0.jpg?itok=CcyKWq1B",
    description: "Jantes Momo 16 pouces, flammes spermatiques, bas de caisse aérodynamiques"
  },
  {
    user: kevin,
    address: "11 impasse des Oyats Jullouville-Les-Pins",
    name: "Camping tuning car",
    model: "Peugeot 206 CC",
    photo_url: "http://eeena.rosselcdn.net/sites/default/files/dpistyles_v2/ena_16_9_extra_big/2017/06/29/node_30124/2062894/public/2017/06/29/B9712462378Z.1_20170629092409_000%2BGJD9BH6L9.1-0.jpg?itok=9UzqmqQq",
    description: "Portières Lambo, jantes chromées 20 pouces, remorque rabaissé avec spoiler intégré"
  },
  {
    user: kevin,
    address: "Place Sébastopol, Lille",
    name: "Orange mékanik",
    model: "Peugeot 106",
    photo_url: "http://image.noelshack.com/fichiers/2014/37/1410731648-expo-tuning.jpg",
    description: "Capot carbone, sièges baquets, vitres tintées, pare-choc performance"
  },
  {
    user: kevin,
    address: "62 rue Labrouste, Paris",
    name: "Méga Van",
    model: "Ford Gran Tourneo",
    photo_url: "http://images.forum-auto.com/mesimages/1067822/IMG44711.jpg",
    description: "Pare-buffle, flammes du désert, peinture de femme attrayante"
  },
  {
    user: kevin,
    address: "36 Rue de la Communauté Urbaine, 59100 Roubaix",
    name: "Daim Guerie",
    model: "BMW M3 Cabrio",
    photo_url: "http://img.xooimage.com/files28/6/4/e/bmw--bmw-3er-extr...ng-_2864-1f2791a.jpg",
    description: "Peinture cuivrée, TV 20 pouces dans le coffre, sellerie daim"
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
