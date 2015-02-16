# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'smarter_csv'

tops = SmarterCSV.process('db/csv/tops.csv')
pants = SmarterCSV.process('db/csv/pants.csv')
shoes = SmarterCSV.process('db/csv/shoes.csv')
users = SmarterCSV.process('db/csv/users.csv')

Top.create(tops)
Pant.create(pants)
Shoe.create(shoes)
User.create(users)
