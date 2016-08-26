# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Doctor.create(email: "")

Doctor.destroy_all
(1..50).each do |n|
	puts "Inserting Doctor#{n}"
	a = Doctor.create(email: "d#{n}@d#{n}.com", password: "12345678", name: "Doctor#{n}", age: rand(35..60), doctor_category_id: rand(1..10))
end

b=Doctor.create(name:"Hari",age: "40",sex: "Male",phone: "8777498772",experience:"10",clinic_details: "ABC Hospital",city: "Kochi",state: "Kerala",email: "hari@gmail.com",username: "hari",password: "hari")

# (1...10).each do |n|
# 	Patient.create(email: "p#{n}@p#{n}.com", password: "1234", name: "Patient#{n}", age: rand(35..60))
# end
c=Patient.create(name: "Anu",age: "34",sex: "Male",phone: "9854535239",city: "kochi",state: "Kerla",username: "anu",email: "anu@gmail.com",password: "anu")