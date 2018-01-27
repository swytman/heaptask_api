# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.create({
  name: 'Заплатить налоги',
  description: 'Заплати налоги и живи спокойно',
  start: Time.now,
  end: Time.now + 1.year,
  importance: 'very important',
  urgency: 'low'
})

Task.create({
    name: 'Зарядка',
    description: 'Заряжайся',
    start: Time.now,
    end: Time.now + 1.year,
    importance: 'not important',
    urgency: 'low'
})







