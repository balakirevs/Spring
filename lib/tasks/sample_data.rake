#!/bin/env ruby
# encoding: utf-8
require 'active_support'
namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_relationships
  end
end  
    
def make_users 
  admin = User.create!(name: "Alexander",
                         surname: "Balakirev",
                         middle_name: "Vladimirovich",
                         date_of_birth: "23.01.1982",
                         city: "Kyiv",
                         phone: "+38(044)444-5555",
                         sex: "M", 
                         email: "example@example.org",
                         password: "foobar",
                         password_confirmation: "foobar")
  admin.toggle!(:admin)
  99.times do |n|
    name  = Faker::Name.name
    surname = "Антонов-{n+1}"
    middle_name = "Антонович-{n+1}"
    date_of_birth = "04.08.1978-#{n+1}"
    city = "Киев"
    phone = "+38(044)444-5678"
    sex = "M"
    email = "example-#{n+1}@example.org"
    password  = "password"
    User.create!(name: name,
                 surname: surname,
                 middle_name: middle_name,
                 date_of_birth: date_of_birth,
                 city: city,
                 phone: phone,
                 sex:sex,
                 email: email,
                 password: password,
                 password_confirmation: password)
  end
end

def make_relationships
  users = User.all
  user  = users.first
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each      { |follower| follower.follow!(user) }
end  
