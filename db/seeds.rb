# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

for i in 0..24
   measurement = Measurement.create(temperature: -25 + rand(60), humidity: 30 + rand(70), pressure: 900 + rand(200))
	measurement.created_at = Time.now - i.hours
	measurement.save
end

