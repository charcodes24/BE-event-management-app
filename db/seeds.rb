Category.destroy_all
Event.destroy_all

puts 'Seeding Categories...'

c1 = Category.create(name: 'birthday')
c2 = Category.create(name: 'personal')
c3 = Category.create(name: 'work')
c4 = Category.create(name: 'school')

puts 'Seeding Events...'

categories = [c1, c2, c3, c4]
# priority = %w[low moderate high]

20.times do
  Event.create(name: 'to' + ' ' + Faker::Verb.base + ' with ' + Faker::FunnyName.name,
               date: Faker::Date.in_date_period,
               priority: rand(1..3),
               completed: Faker::Boolean.boolean,
               category: categories.sample)
end

puts 'Done!'
