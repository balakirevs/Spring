FactoryGirl.define do
  factory :user do
    name "Ivan"
    surname "Ivanov"
    middle_name "Ivanovich"
    date_of_birth "23.01.1983"
    city "Kyiv" 
    phone "222-22-22"
    sex "M"
    email "ivan@example.com"
    image_url "image.jpg" 
    password "foobar" 
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end
end