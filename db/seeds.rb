# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# 10 times create new user, can use faker
# for each user create 5 books, can use faker

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  password = '123456'

  new_user = User.new(email: email, password: password, first_name: first_name, last_name: last_name)
  new_user.save!

  5.times do
    title = Faker::Book.title
    author = Faker::Book.author
    synopsis = Faker::Lorem.paragraph_by_chars(number: rand(200..350), supplemental: false)
    # user_id = new_user::User

    new_book = Book.new(title: title, author: author, isPrivate: false, synopsis: synopsis, book_status: 'free', user: new_user)
    new_book.save!
  end
end
