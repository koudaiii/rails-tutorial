namespace :db do
  desc "Fill datavase with sample data"
  task populate: :environment do
    ActiveRecord::Base.transaction do
      make_users
      make_microposts
      make_relationships
    end
  end
end

def make_users
  User.create!(name: "Example User",
               account_name: "accountname",
               email: "example@railstutorial.jp",
               password: "foobar",
               password_confirmation: "foobar",
               admin: true)
  99.times do |n|
    name = Faker::Name.name
    account_name = "accountname#{n+1}"
    email = "example-#{n+1}@railstutorial.jp"
    password = "password"
    User.create!(name: name,
    account_name: account_name,
    email: email,
    password: password,
    password_confirmation: password)
  end
end

def make_microposts
  users = User.all.limit(6)
  50.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end

def make_relationships
  users = User.all
  user = users.first
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each { |follower| follower.follow!(user) }
end
