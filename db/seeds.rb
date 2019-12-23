# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
description = 'ceci une description generique'

a = Protocol.new(title: 'zone 1', content: description)
b = Protocol.new(title: 'zone 2', content: description)
c = Protocol.new(title: 'zone 3', content: description)
d = Protocol.new(title: 'zone 4', content: description)

a.save
b.save
c.save
d.save

Task.new(content: 'task number 1', check: true, protocol: a).save
Task.new(content: 'task number 2', check: true, protocol: a).save
Task.new(content: 'task number 3', check: true, protocol: a).save
Task.new(content: 'task number 4', check: true, protocol: a).save
Task.new(content: 'task number 5', check: true, protocol: a).save
Task.new(content: 'task number 6', check: true, protocol: b).save
Task.new(content: 'task number 7', check: true, protocol: b).save
Task.new(content: 'task number 8', check: true, protocol: c).save
Task.new(content: 'task number 9', check: true, protocol: c).save
Task.new(content: 'task number 10', check: false, protocol: d).save
Task.new(content: 'task number 11', check: false, protocol: d).save
Task.new(content: 'task number 12', check: false, protocol: d).save
Task.new(content: 'task number 13', check: false, protocol: d).save
