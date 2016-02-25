# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
GangplankLocation.create(name: 'Chandler')
GangplankLocation.create(name: 'Avondale')
GangplankLocation.create(name: 'Queen Creek')

GangplankInitiative.create(name: 'Labs')
GangplankInitiative.create(name: 'Academy')
GangplankInitiative.create(name: 'Business')
