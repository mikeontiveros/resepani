# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
services = Service.create([
    {name: "Other", desc: "A catch-all cetegory"},
    {name: "Nanny", desc: "I watch your kids so you don't have to."},
    {name: "Tutor", desc: "I teach your kids so you don't have to."}
  ])
