# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Doctor.create(email: "")

(1...100).each do |n|
	Doctor.create(email: "d#{n}@d#{n}.com", password: "12345678", name: "Doctor#{n}", age: rand(35..60))
end


(1...10).each do |n|
	Patient.create(email: "p#{n}@p#{n}.com", password: "1234", name: "Patient#{n}", age: rand(35..60))
end
