# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create({
  name: 'test user',
  email: 'test@te.st',
  email_confirmation: 'test@te.st',
  password: 'password',
})

Poem.create([
  {
    user: user,
    date: Date.today,
    status: 0,
    body: 'test poem',
  },
  {
    user: user,
    date: Date.today,
    status: 1,
    body: 'test poem2',
  },
])

Report.create([
  {
    user: user,
    date: Date.today,
    status: 0,
    body: 'test report body',
    title: 'test report title',
  },
  {
    user: user,
    date: Date.today,
    status: 1,
    body: 'test report2 body',
    title: 'test report2 title',
  },
])

Task.create([
  {
    user: user,
    date: Date.today,
    status: 0,
    body: 'test task',
    priority: 0,
  },
  {
    user: user,
    date: Date.today,
    status: 1,
    body: 'test task2',
    priority: 1,
  },
  {
    user: user,
    date: Date.today,
    status: 2,
    body: 'test task3',
    priority: 0,
  },
])
