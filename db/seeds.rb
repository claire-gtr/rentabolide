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
    description: "Jantes targa racing 15 pouces, rétros m3, hp oxygen 3 voies 170w source sony s2200 cdr ampli boa 800w + caisson accoustique 1000w jbl"
  },
  {
    user: kevin,
    name: "Le lézard",
    model: "Peugeot 206",
    description: "Néon cup, jantes atomik 17 pouces, son surround, portes papillon, prises d'air racing"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  }
]
Car.create!(cars_attributes)
puts 'Finished!'




puts 'Creating bookings...'

bookings_attributes = [
  {
    user: kevin,
    name: "La ratisseuse",
    model: "Citroen BX",
    description: "Jantes targa racing 15 pouces, rétros m3, hp oxygen 3 voies 170w source sony s2200 cdr ampli boa 800w + caisson accoustique 1000w jbl"
  },
  {
    user: kevin,
    name: "Le lézard",
    model: "Peugeot 206",
    description: "Néon cup, jantes atomik 17 pouces, son surround, portes papillon, prises d'air racing"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  },
  {
    user: kevin,
    name: "La fusée de la galaxie",
    model: "Renault r21",
    description: "Ailerons de toit, paupières de phare et de pare brise, échappement quadri-sorties"
  }
]




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
