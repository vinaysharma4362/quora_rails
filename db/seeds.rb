# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do |t|
  Topic.find_or_create_by(title: "Topic #{t}")
end


10.times do |t|
  @user = User.create(email: "user_#{t}@yopmail.com", password: '123456', password_confirmation: '123456')
  @user.save!
  @user.questions.create(title: "Question #{t}", content: '', topic_ids: Topic.ids.sample(2))
end

all_ids = User.ids
user_ids = all_ids.sample(3)
remaining_ids = all_ids - user_ids
topic_ids = Topic.ids.sample(3)



User.where(id: user_ids).each do |u|
  u.topics << Topic.where(id: topic_ids)
  u.followers << User.where(id: remaining_ids)
  u.save
end

