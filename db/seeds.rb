# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
description = 'ceci une description generique'

e = Area.new(title: 'Est', content: description)

e.save

a = Protocol.new(title: 'Documentation', content: description, area: e)
b = Protocol.new(title: 'Check-List matin', content: description, area: e)
c = Protocol.new(title: 'Check-List soir', content: description, area: e)
d = Protocol.new(title: 'Check-List nuit', content: description, area: e)

a.save
b.save
c.save
d.save

Task.new(content: 'task number 1', protocol: a).save
Task.new(content: 'task number 2', protocol: a).save
Task.new(content: 'task number 3', protocol: a).save
Task.new(content: 'task number 4', protocol: a).save
Task.new(content: 'task number 5', protocol: a).save
Task.new(content: 'task number 6', protocol: b).save
Task.new(content: 'task number 7', protocol: b).save
Task.new(content: 'task number 8', protocol: c).save
Task.new(content: 'task number 9', protocol: c).save
Task.new(content: 'task number 10', protocol: d).save
Task.new(content: 'task number 11', protocol: d).save
Task.new(content: 'task number 12', protocol: d).save
Task.new(content: 'task number 13', protocol: d).save
